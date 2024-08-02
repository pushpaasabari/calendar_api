$curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://calendarific.com/api/v2/holidays?api_key=' . $apiKey . '&country=IN&year=2024',
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

        // print_r($response);

        // echo "<br><br><br>";


        curl_close($curl);
        $jsonData = json_decode($response, true); // Replace $yourJsonData with your actual JSON data

        print_r($jsonData);
        exit();
        foreach ($jsonData as $holidayData) {
            Holiday::create([
                'name' => $holidayData['name'],
                'date' => $holidayData['date']['iso'],
                'description' => $holidayData['description'],
                'type' => implode(', ', $holidayData['type']),
            ]);
        }

        return 'Data stored successfully!';