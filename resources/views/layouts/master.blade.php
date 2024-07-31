<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/dataTables.bootstrap4.min.css"
        integrity="sha512-PT0RvABaDhDQugEbpNMwgYBCnGCiTZMh9yOzUsJHDgl/dMhD9yjHAwoumnUk3JydV3QTcIkNDuN40CJxik5+WQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/buttons/2.3.5/css/buttons.dataTables.min.css" rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/datatables.net-buttons-bs5/2.3.6/buttons.bootstrap5.min.css"
        integrity="sha512-vWTrt2A9iAn2pK8hNZS26YZRDDUvLiOfyL+MmBEXJizrigtxnpLuLrLOOMm+pcrUJFzGssUwoS6Gofp+TT2deQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"
        integrity="sha512-BkpSL20WETFylMrcirBahHfSnY++H2O1W+UnEEO4yNIl+jI2+zowyoGJpbtk6bx97fBXf++WJHSSK2MV4ghPcg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js"
        integrity="sha512-RdSPYh1WA6BF0RhpisYJVYkOyTzK4HwofJ3Q7ivt/jkpW6Vc8AurL1R+4AUcvn9IwEKAPm/fk7qFZW3OuiUDeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    {{-- <script src="{{ asset('vendor/datatables/buttons.server-side.js') }}"></script> --}}

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <style>
       #notifDiv {
        z-index:10000;
        display: none;
        background: green;
        font-weight: 450;
        width: 350px;
        position: fixed;
        top: 80%;
        left: 5%;
        color: white;
        padding: 5px 20px;
       } 
    </style>

        <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
        <script src="{{ asset('js/navigation.js') }}"></script>
    
    @yield('styles')
    <script>
        $(document).ready(function(){
            $('.dropdown-toggle').dropdown()
        });
    </script>
  <script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
  

    <link rel="stylesheet" href="{{ asset('css/navigation.css') }}">
</head>

<body style="background-color:rgb(239, 239, 239)">
    <nav class="custom-nav">
        <div class="l-nav">
            <div class="logo">
                <img class="logo-img" src="storage/images/logo.png" alt="Logo">
            </div>

            <div class="navi-list">
                <a href="/" class="navi-item {{ request()->is('/') ? 'active' : '' }}">
                    Home
                </a>
                <div class="navi-item {{ request()->is('/authors') ? 'active' : '' }}" >
                    Authors 
                </div>
                <div class="navi-item {{ request()->is('/genres') ? 'active' : '' }}" id="genreDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Genres &#x25BE;
                </div>
                <div class="dropdown-menu" aria-labelledby="#genreDrop">
                    @php
                        $genres = ['fiction', 'non-fiction', 'fantasy', 'mystery', 'romance'];
                    @endphp

                    @foreach ($genres as $genre)
                        <a class="dropdown-item" href="#">{{ ucfirst($genre) }}</a>
                    @endforeach
                </div>
                <div style="color:#334E89" class="navi-item {{ request()->is('/popular') ? 'active' : '' }}">
                    Most Popular
                </div>
            </div>
        </div>
        <div class="r-nav">
            <div class="search-form">
                <input id="tags" class="search-input" type="text"> &nbsp;&nbsp;&nbsp;
                <button class="search-button"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="white" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                </svg></button>
            </div>
            <div class="controls">
                @guest 
                    <a class="control-a" href="/login">Login</a> &nbsp; &nbsp;
                    <a class="control-a" href="/register" >Register</a> &nbsp; &nbsp;
                @else
            

                @if (Auth::user()->role == 0)
                <div class="account-container" id="genreDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-radius:10px;height:60px;width:100px; display:flex; justify-content:center; align-items:center;">
                    <div style="display:flex; justify-content:center;align-items:center;">
                        <img src="storage/images/user.png" style="width:40%;height: 100%;object-fit: contain;overflow: hidden;border-radius: 20px;" alt="">
                        &nbsp; &#x25BC;
                    </div>
                </div>
                <div class="dropdown-menu" aria-labelledby="#accountDrop">
                    <a class="dropdown-item" href="/pendings">See Pendings</a>
                    <a class="dropdown-item" href="/dashboard">See Analytics</a>
                    <hr>
                    <a class="dropdown-item" href="/authors">Authors CRUD</a>
                    <a class="dropdown-item" href="/book">Books CRUD</a>
                    <a class="dropdown-item" href="/publisher">Publisher CRUD</a>
                    <a class="dropdown-item" href="#">Users CRUD</a>
                    <hr>
                    <form class="control-form" action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button class="dropdown-item" type="submit" type="submit">Logout</button> &nbsp; &nbsp;
                    </form>
                </div>
                    
                @else
                    <input type="text" value="{{ Auth::user()->id }}" hidden id="client_id">
                    <form class="control-form" action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button class="control-button" type="submit" type="submit">Logout</button> &nbsp; &nbsp;
                    </form>
                    <a class="control-a" href="/profile">{{ Auth::user()->name }}</a> &nbsp; &nbsp;
                    <form action="#" method="#" enctype="multipart/form-data" id="borrowData">
                        <input type="text" id="clientData" name="clientData" value="{{ Auth::user()->id }}" hidden>
                        <input type="text" id="bookData" name="bookData" hidden>
                    </form>
                @endif
                @endguest
            </div>
        </div>
    </nav>

    <br><br><br>

        @yield('content')



</body>
<script>
    searchWorking = false;

    var availableTags = [];
    var timeout;

$('#tags').on('input', function() {
    var query = $(this).val();
    var availableTags = [];

    // Clear any existing timeout to prevent multiple simultaneous requests
    clearTimeout(timeout);

    // Set a new timeout
    timeout = setTimeout(function () {
        // Make AJAX call only after debounce timeout
        $.ajax({
            type: "GET",
            url: `/api/search/${query}`,
            dataType: 'json',
            success: function (data) {
                // Process the data
                $.each(data, function (key, value) {
                    availableTags.push(value.title);
                });
                // Initialize autocomplete after receiving data
                $("#tags").autocomplete({
                    source: availableTags
                });
                console.log(availableTags);
            },
            error: function () {
                console.log('AJAX load did not work');
            }
        });
    }, 800); // Debounce timeout set to 300 milliseconds (adjust as needed)
});

  </script>
</html>