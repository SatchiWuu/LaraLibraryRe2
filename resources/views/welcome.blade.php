@extends('layouts.master')

@section('content')
<script src="{{ asset('js/home.js') }}"></script>
<link rel="stylesheet" href="{{ asset('css/home.css') }}">
<script src="https://pagination.js.org/dist/2.6.0/pagination.min.js"></script>

  <style>
    body {
      background-color: #f8f9fa;
    }
    .welcome-text {
      margin-top: 100px;
      text-align: center;
    }
  </style>

  <div class="main-section">
    <div class="main-content">
      <div class="content-box">
        <div class="tagline">
          Unlock Your Imagination: Explore, Discover, Learn at Our Library!
        </div>
        <br>
        <div class="tagline-sub">Embark on a Journey of Knowledge and Inspiration: Your Gateway to Literature, Learning, and Lifelong Discovery at LaraLibrary. Delve into Worlds Unseen, Unravel Mysteries, and Cultivate Curiosity with Our Vast Collection of Books, Resources, and Community Events. Where Stories Come Alive and Minds Come to Flourish. Welcome to Your Personal Sanctuary of Wisdom and Wonder</div>
        
      </div>
    </div>

    <div class="side-content">
      <div class="side-title">BEST-SELLING AUTHORS</div>
      <div class="side-list" id="authorPills">
      </div>
    </div>
  </div>

  <div id="bookDeck" class="books-container">
    
  </div>


  <div id="notification-container" class="notification-container">
    
  </div>

  <div id="demo" class="mt-3">
    <!-- Pagination controls will be dynamically added here -->
  </div>

</div>

  @endsection