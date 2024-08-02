<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Holiday;
use DateTime;
use DB;
use Session;



class HolidayController extends Controller
{

    public function store(Request $request)
    {

        $country = $request->country;
        $year = $request->year;
        $apiKey = env('CALENDARIFIC_API_KEY');

        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://calendarific.com/api/v2/holidays?api_key=' . $apiKey . '&country=' . $country . '&year=' . $year . '',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'GET',
            )
        );

        $response = curl_exec($curl);
        curl_close($curl);
        $jsonData = json_decode($response, true);
        $holidays = $jsonData['response']['holidays'];



        foreach ($holidays as $holidayData) {
            $exists = Holiday::where('name', $holidayData['name'])
                ->where('date', $holidayData['date']['iso'])
                ->exists();

            if ($exists >= 1) {
                //return 'Data stored successfully!';
                return redirect()->back()->with('error', 'Data already exists!.');
            } else {
                Holiday::create([
                    'name' => $holidayData['name'],
                    $date = new DateTime($holidayData['date']['iso']),
                    $formattedDate = $date->format('Y-m-d'),
                    'date' => $formattedDate,
                    'description' => $holidayData['description'],
                    'type' => implode(', ', $holidayData['type'])
                ]);
            }
        }

        //return 'Data stored successfully!';
        return redirect()->back()->with('success', 'Data stored successfully!.');

    }

    public function import()
    {
        return view('import');
    }
    public function list()
    {
        $holidaylist = DB::table('holidays')->select('*')->orderBy('id')->get();
        return view('list', compact('holidaylist'));
    }
    public function list_holiday()
    {
        $holidaylist = DB::table('holidays')->select('*')->orderBy('id')->get();
        return view('list_holiday', compact('holidaylist'));
    }

    public function calendar(Request $request)
    {
        // Validate and store the new event
        $request->validate([
            'name' => 'required|string|max:255',
            'date' => 'required|date_format:Y-m-d H:i:s',
            'description' => 'nullable|string',
            'type' => 'nullable|string|max:255',
        ]);

        $holiday = Holiday::create([
            'name' => $request->input('name'),
            'date' => $request->input('date'),
            'description' => $request->input('description'),
            'type' => $request->input('type'),
        ]);

        return response()->json($holiday);
    }

    public function holiday()
    {
        $holidays = Holiday::all();
        return view('calendar', compact('holidays'));
    }

    public function get_ajax_holiday(Request $request)
    {
        $events = Holiday::all();
        return response()->json($events);

    }
}