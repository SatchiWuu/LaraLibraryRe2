@extends('layouts.master')
@section('content')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js" integrity="sha512-RdSPYh1WA6BF0RhpisYJVYkOyTzK4HwofJ3Q7ivt/jkpW6Vc8AurL1R+4AUcvn9IwEKAPm/fk7qFZW3OuiUDeg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js">
    </script>
    <script src="{{ asset('js/admin.js') }}"></script>

  <style>
    .main-container {
      width: 100%;
      display: flex;
      justify-content: center;
      gap:20px;
      flex-direction: row;
    }

    #borrowAllPending {
      width: 33%;
    }

    #borrowAllBorrowing {
      width: 33%;
    }

    #borrowAllCompleted {
      width: 33%;
    }

  
  </style>

    <div class="main-container">
      <div id="borrowAllPending" class="m-4 container border border-secondary p-2">
      </div>

      <div id="borrowAllBorrowing" class="m-4 container border border-secondary p-2">
      </div>

      <div id="borrowAllCompleted" class="m-4 container border border-secondary p-2">
      </div>
    </div>
@endsection