@include('layouts.master')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/2.1.3/css/dataTables.bootstrap4.css">
@include('layouts.container')
<table id="example" class="table table-striped table-bordered" style="width:100%">
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
        <?php $i=1;?>
        @foreach($holidaylist as $holiday)
        <tr>
            <td>{{$i}}</td>
            <td>{{$holiday->name}}</td>
            <td>{{$holiday->date}}</td>
            <td>{{$holiday->description}}</td>
            <td>{{$holiday->type}}</td>
        </tr>
        <?php $i++; ?>
        @endforeach
    </tbody>
</table>

<script src='https://code.jquery.com/jquery-3.7.1.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>
<script src='https://cdn.datatables.net/2.1.3/js/dataTables.js'></script>
<script src='https://cdn.datatables.net/2.1.3/js/dataTables.bootstrap4.js'></script>

<script>
    // new DataTable('#example');
    $('#example').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
</script>

@include('layouts.footer')