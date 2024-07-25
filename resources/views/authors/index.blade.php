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
  <script src="{{ asset('js/authors.js') }}"></script>

  <br><br><br>
  <div style="width: 100%; display:flex; justify-content: center; align-items:center">
  <div class="table" style="width:80%;">
        <div class="table-responsive">
            <table id="authorTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                    <th>id</th>
                    <th>lname</th>
                    <th>fname</th>
                    <th>address</th>
                    <th>phone</th>
                    <th>gender</th>
                    
                    <th>Edit</th>
                    <th>Delete</th>
                    </tr>
                </thead>
                <tbody id="authorBody"></tbody>
            </table>
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#authorModal">add<span
            class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
        </div>
    </div>
    <div class="modal fade" id="authorModal" role="dialog" style="display:none">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Create new Authors</h4>
              <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form id="authorForm" method="#" action="#" enctype="multipart/form-data">
      
                  <div class="form-group">
                      <label for="authorId" class="control-label">author id</label>
                      <input type="text" class="form-control" id="authorId" name="authorId">
                    </div>
                
                <div class="form-group">
                  <label for="lname" class="control-label">last name</label>
                  <input type="text" class="form-control " id="lname" name="lname">
                </div>
                <div class="form-group">
                  <label for="fname" class="control-label">first name</label>
                  <input type="text" class="form-control " id="fname" name="fname">
                </div>
                <div class="form-group">
                  <label for="address" class="control-label">address</label>
                  <input type="text" class="form-control " id="address" name="address">
                </div>
                
               
                <div class="form-group">
                  <label for="phone" class="control-label">phone</label>
                  <input type="text" class="form-control " id="phone" name="phone">
                </div>
                
                <div class="form-group">
                  <label for="gender" class="control-label">gender</label>
                  <input type="text" class="form-control " id="gender" name="gender">
                </div>
                
                
                
                <div class="form-group">
                  <label for="image" class="control-label">Image</label>
                  <input type="file" class="form-control" id="image_upload" name="image_upload" />
                </div>
              </form>
            </div>
            <div class="modal-footer" id="footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="authorModal">Close</button>
              <button id="authorSubmit" type="submit" class="btn btn-primary">Save</button>
              <button id="authorUpdate" type="submit" class="btn btn-primary">update</button>
            </div>
      
          </div>
        </div>
      </div>
@endsection