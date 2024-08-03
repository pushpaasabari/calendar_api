<body>
    <nav class="navbar navbar-expand-lg bg-dark-subtle">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                    @if( Session::get('loggedin') == 'UserLoggedIn')
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('index')}}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('logout')}}">Logout</a>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('import')}}">Import</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('list')}}">Holiday list</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="{{url('list_holiday')}}">Holiday</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('calendar')}}">Calendar</a>
                    </li>
                    @endif
                </ul>
                <span class="navbar-text">
                </span>
            </div>
        </div>
    </nav>