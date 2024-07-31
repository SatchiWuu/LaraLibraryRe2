@extends('layouts.master')

@section('content')
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js" integrity="sha512-RdSPYh1WA6BF0RhpisYJVYkOyTzK4HwofJ3Q7ivt/jkpW6Vc8AurL1R+4AUcvn9IwEKAPm/fk7qFZW3OuiUDeg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js">
</script>
<script src="{{ asset('js/transaction.js') }}"></script>
<br>
<div class="container">
  <table class="table" id="pTable">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Title</th>
        <th scope="col">Author</th>
        <th scope="col">Genre</th>
        <th scope="col">Language</th>
      </tr>
    </thead>
    <tbody id="pBody">
      
    </tbody>
  </table>
  <button class="btn btn-info" id="transact">Submit</button>
</div>

<br>

<div id="borrowOverview" class="container border border-secondary p-2">
  
</div>

@endsection
