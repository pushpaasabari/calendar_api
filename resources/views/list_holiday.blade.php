<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Holidays List</title>

    @include('layouts.css')
    @include('layouts.top-navbar')

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Student DataTable</h3>
                </div>
                <div class="card-body">
                    <table id="example2" class="table table-bordered table-striped" style="width: 450px">
                        <thead>
                            <tr>
                                <th>S No</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Type</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i=1; ?>
                            @foreach($holidaylist as $holiday)
                            <tr>
                                <td>{{$i}}</td>
                                <td>{{$holiday->name}}</td>
                                <td>{{$holiday->date}}</td>
                                <td>{{$holiday->description}}</td>
                                <td>{{$holiday->type}}</td>
                                <?php $i++; ?>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
@include('layouts.js')

</html>