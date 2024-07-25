@extends('layouts.master')
@section('content')

<style>
  :root {

--theadColor: #cfcafa;

--theadTextColor: #000;

--darkColor:#09011a;

}

body {

      font-family: "Open Sans", sans-serif;

    }

    table.dataTable {

     border:1px solid #000;

    }

    thead {

      background-color: skyblue;

      

    }

    thead > tr,

    thead > tr > th {

      background-color: transparent;

      color: var(--theadTextColor) !important;

      font-weight: normal;

      text-align: start;

    }

    table.dataTable thead th,

    table.dataTable thead td {

      border-bottom: 0px solid #111 !important;

    }

    .dataTables_wrapper > div {

      margin: 5px;

    }

    table.dataTable.display tbody tr.even > .sorting_1,

    table.dataTable.order-column.stripe tbody tr.even> .sorting_1 table.dataTable.display

      tbody

      tr.even,

    table.dataTable.display tbody tr.odd > .sorting_1,

    table.dataTable.order-column.stripe tbody tr.odd > .sorting_1,

    table.dataTable.display tbody tr.odd {

      background-color: #ffffff;

    }

    table.dataTable thead th {

      position: relative;

      background-image: none !important;

    }

    table.dataTable thead th.sorting:after,

    table.dataTable thead th.sorting_asc:after,

    table.dataTable thead th.sorting_desc:after {

      position: absolute;

      top: 12px;

      right: 8px;

      display: block;

      font-family: "Font Awesome\ 5 Free";

    }

    table.dataTable thead th.sorting:after {

      content: "\f0dc";

      color: #ddd;

      font-size: 0.8em;

      padding-top: 0.12em;

    }

    table.dataTable thead th.sorting_asc:after {

      content: "\f0de";

    }

    table.dataTable thead th.sorting_desc:after {

      content: "\f0dd";

    }

    table.dataTable.display tbody tr:hover > .sorting_1,

    table.dataTable.order-column.hover tbody tr:hover > .sorting_1,

    tbody tr:hover {

      background-color: lightcyan !important;

      color: black;
      transition: .5s;

    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.current, 

    .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {

           background: none !important;

           border-radius: 50px;

       background-color: var(--theadColor) !important;

       color:#000 !important

    }

.paginate_button.current:hover

{

      background: none !important;

           border-radius: 50px;

           background-color: var(--theadColor) !important;

       color:#fff !important

}

.dataTables_wrapper .dataTables_paginate .paginate_button.current:hover,

.dataTables_wrapper .dataTables_paginate .paginate_button:hover {

border: 1px solid #979797;

background: none !important;

border-radius: 50px !important;

 background-color: #000 !important;

 color: #fff !important;

}

</style>

<link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />
  <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
  <script src="{{ asset('js/book.js') }}"></script>
    <div id="items" class="container">
    <br><br><br>
    <div style="width:100%; display:flex; justify-content: center; align-items:center">
 
        <div class="table">
            <table id="bookTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Publication</th>
                        <th>Language</th>
                        <th>Reviews</th>
                        <th>Summary</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody id="bookBody"></tbody>
            </table>
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#bookrModal">add<span
            class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
        </div>
    </div>

    <div class="modal fade" id="bookModal" role="dialog" style="display:none">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Create new Books</h4>
              <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form id="bookForm" method="#" action="#" enctype="multipart/form-data">
      
                  <div class="form-group">
                      <label for="bookId" class="control-label">Book id</label>
                      <input type="text" class="form-control" id="bookId" name="bookId" readonly>
                    </div>
                <div class="form-group">
                  <label for="title" class="control-label">Author</label>
                  <select class="form-control " id="authorBox" name="authorBox">
                  </select>
                </div>
                <div class="form-group">
                  <label for="title" class="control-label">Publisher</label>
                  <select class="form-control " id="publisherBox" name="publisherBox">
                  </select>
                </div>
                <div class="form-group">
                  <label for="title" class="control-label">Title</label>
                  <input type="text" class="form-control " id="title" name="title">
                </div>
                <div class="form-group">
                  <label for="genre" class="control-label">Genre</label>
                  <input type="text" class="form-control " id="genre" name="genre">
                </div>
                <div class="form-group">
                  <label for="publication" class="control-label">Publication</label>
                  <input type="text" class="form-control " id="publication" name="publication">
                </div>
                
               
                <div class="form-group">
                  <label for="language" class="control-label">Language</label>
                  <input type="text" class="form-control " id="language" name="language">
                </div>
                
                <div class="form-group">
                  <label for="image" class="control-label">Image</label>
                  <input type="file" class="form-control" id="image_upload" name="image_upload" />
                </div>
                
                
                <div class="form-group">
                  <label for="reviews" class="control-label">Reviews</label>
                  <input type="text" class="form-control" id="reviews" name="reviews" />
                </div>

                <div class="form-group">
                  <label for="summary" class="control-label">Summary</label>
                  <input type="text" class="form-control" id="summary" name="summary" />
                </div>
              </form>
            </div>
            <div class="modal-footer" id="footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button id="bookSubmit" type="submit" class="btn btn-primary">Save</button>
              <button id="bookUpdate" type="submit" class="btn btn-primary">update</button>
            </div>
      
          </div>
        </div>
      </div>
@endsection