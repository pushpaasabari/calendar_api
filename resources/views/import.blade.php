@include('layouts.master')
<div class="container">
    <div class="mt-5">
        @if($errors->any())
        <div class="col-12">
            @foreach($errors->all() as $error)
            <div class="alert alert-danger">
                {{$error}};
            </div>
            @endforeach
        </div>
        @endif
        @if(session()->has('error'))
        <div class="alert alert-danger">
            {{session('error')}};
        </div>
        @endif
        @if(session()->has('success'))
        <div class="alert alert-success">
            {{session('success')}};
        </div>
        @endif
    </div>
    <form action="{{url('import')}}" method="Post" class="ms-auto me-auto mt-auto" style="width:350px">
        @csrf
        <div class="mb-2">
            <label class="form-label">Year</label>
            <input type="text" class="form-control" name="year" value="2024" readonly>
        </div>
        <div class="mb-2">
            <label class="form-label">Country</label>
            <input type="text" class="form-control" name="country" value="IN" readonly>
        </div>
        <div class="mb-2 offset-4 col-6 pb-3">
            <button type="submit" class="btn btn-primary">Import Data</button>
        </div>
    </form>
</div>

</body>

</html>