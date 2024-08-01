@extends('layouts.master')
@section('content')
<style>
  label.error {
    color:red;
  }
</style>

<link rel="stylesheet" href="{{ asset('css/datatable.css') }}">
</link>
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />

<div style="width:100%; display:flex; justify-content: center; align-items:center">
  <div class="table" style="width:80%;">
    <table id="publisherTable" class="table table-striped table-hover">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Status</th>
          <th>Country</th>
          <th>Edit</th>
          <th>Delete</th>

        </tr>
      </thead>
      <tbody id="publisherBody"></tbody>
    </table>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#publisherModal">add<span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
  </div>
</div>


</div>
<div class="modal fade" id="publisherModal" role="dialog" style="display:none">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Create new Publisher</h4>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="publisherForm" name="publisherForm" method="#" action="#" enctype="multipart/form-data">

          <div class="form-group">
            <label for="publisherId" class="control-label">publisher id</label>
            <input type="text" class="form-control" id="publisherId" name="publisherId" readonly>
          </div>

          <div class="form-group">
            <label for="name" class="control-label">Name</label>
            <input type="text" class="form-control " id="name" name="name">
          </div>
          <div class="form-group">
            <label for="country" class="control-label">Country</label>
            <input type="text" class="form-control " id="country" name="country">
          </div>
          <div class="form-group">
            <label for="email" class="control-label">Email</label>
            <input type="text" class="form-control " id="email" name="email">
          </div>


          <div class="form-group">
            <label for="phone" class="control-label">phone</label>
            <input type="text" class="form-control " id="phone" name="phone">
          </div>

          <div class="form-group">
            <label for="Status" class="control-label">Status</label>
            <input type="text" class="form-control " id="status" name="status">
          </div>

          <div class="form-group">
            <label for="image" class="control-label">Image</label>
            <input type="file" class="form-control" id="image_upload" name="image_upload" />
          </div>
        </form>
      </div>
      <div class="modal-footer" id="footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button id="publisherSubmit" type="submit" class="btn btn-primary">Save</button>
        <button id="publisherUpdate" type="submit" class="btn btn-primary">update</button>
      </div>

    </div>
  </div>
</div>

  <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
  <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
  <script src="{{ asset('js/publisher.js') }}"></script>
  @endsection