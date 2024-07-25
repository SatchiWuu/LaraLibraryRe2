$(document).ready(function () {
    new DataTable('#bookTable', {
        ajax: {
            url: 'api/book',
            dataType: 'json',
            dataSrc: ''  // This ensures DataTables expects an array directly from the JSON response
        },
        columns: [
            { data: 'id' },
            { data: 'author.lname' },
            { data: 'publisher.name' },
            { data: 'title' },
            { data: 'publication' },
            { data: 'genre' },
            { data: 'language' },
            { data: 'summary' },
            { data: 'reviews' },
            {
                data: null,
                render: function (data, type, row) {
                    return '<button data-toggle="modal" data-target="#bookModal" class="btn btn-sm btn-primary edit-btn" data-id="' + row.id + '">Edit</button>';
                }
            },
            {
                data: null,
                render: function (data, type, row) {
                    return '<button class="btn btn-sm btn-danger delete-btn deletebtn"  data-id="' + row.id + '">Delete</button>';
                }
            }
        ],
        columnDefs: [
            {
                targets: [6, 7],  // Targets the 7th and 8th columns (edit and delete buttons)
                orderable: false,  // Disable ordering on these columns
                searchable: false  // Disable searching on these columns
            }
        ]
        
    });

    // $.ajax({
    //     type: "GET",
    //     url: "/api/book",
    //     dataType: 'json',
    //     success: function (data) {
    //         console.log(data);
    //         $.each(data, function (key, value) {
    //             console.log(value);
    //             id = value.id;
    //             var img = "<img src='storage/" + value.images + "' width='200px', height='200px'/>";
    //             var tr = $("<tr>");
    //             tr.append($("<td>").html(value.id));
    //             tr.append($("<td>").html(img));
    //             tr.append($("<td>").html(value.title));
    //             tr.append($("<td>").html(value.publication));
    //             tr.append($("<td>").html(value.genre));
    //             tr.append($("<td>").html(value.language ));
    //             tr.append($("<td>").html(value.summary));
    //             tr.append($("<td>").html(value.reviews));
    //             tr.append("<td align='center'><a href='#' data-toggle='modal' data-target='#bookModal' id='editbtn' data-id=" + id + "><i class='fas fa-edit' aria-hidden='true' style='font-size:24px; color:blue'></i></a></td>");
    //             tr.append("<td><a href='#'  class='deletebtn' data-id=" + id + "><i  class='fa fa-trash' style='font-size:24px; color:red' ></a></i></td>");
    //             $("#bookBody").append(tr);
    //         });
    //     },
    //     error: function () {
    //         console.log('AJAX load did not work');
    //         alert("error");
    //     }
    // });

    $('#bookTable').on('click', 'button.deletebtn', function (e) {
        var id = $(this).data('id');
        var $row = $(this).closest('tr');
        console.log(id);
        // console.log(table);
        e.preventDefault();
        bootbox.confirm({
            message: "do you want to delete this author?",
            buttons: {
                confirm: {
                    label: 'yes',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'no',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {
                console.log(result);
                if (result)
                    $.ajax({
                        type: "DELETE",
                        url: `/api/book/${id}`,
                        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            $row.fadeOut(4000, function () {
                                $row.remove()
                            });

                            bootbox.alert(data.message);
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    });
            }
        });
    });

    $('#bookModal').on('show.bs.modal', function(e) {
        $("#bookForm").trigger("reset");
        console.log(e.relatedTarget)
        var id = $(e.relatedTarget).attr('data-id');
        console.log("id is"+id);
        if (id !== undefined ) {
            $.ajax({
                type: "GET",
                url: `/api/book/${id}`,
                success: function(data){
                    var selectBox = $('#authorBox');
                    var selectBox2 = $('#publisherBox');
                    selectBox.empty();
                    selectBox2.empty();

                    console.log(data);
                    $("#bookId").val(data.id);
                    $("#authorBox").val(data.author.id);
                    
                    
                    $("#title").val(data.title);
                    $("#genre").val(data.genre);
                    $("#publication").val(data.publication);
                    $("#language").val(data.language);
                    $("#reviews").val(data.reviews); 
                    $("#summary").val(data.summary); 

                    
    
                    if (data.images !== undefined) {
                     $("#cform").prepend(`<img src='storage/${data.images}' width='200px', height='200px' id="image"   />`)
                    } else {
                         
                    }    
                    
                    $.ajax({
                        type: "GET",
                        url: `/api/authors`,
                        success: function(data){

                            $.each(data, function (key, value) {
                                selectBox.append($('<option>').text(value.lname).attr('value', value.id));
                            });
                
                               
                          },
                         error: function(){
                          console.log('AJAX load did not work');
                          alert("error");
                          }
                      });
            
                      $.ajax({
                        type: "GET",
                        url: `/api/publisher`,
                        success: function(data){
            
                            var selectBox = $('#publisherBox');
                            $.each(data, function (key, value) {
                                selectBox.append($('<option>').text(value.name).attr('value', value.id));
                            });
                               
                          },
                         error: function(){
                          console.log('AJAX load did not work');
                          alert("error");
                          }
                      });
                      selectBox2.prepend($('<option>').text(data.publisher.name).attr('value', data.publisher.id));
                      selectBox.prepend($('<option>').text(data.author.lname).attr('value', data.author.id));
                      
                  },
                 error: function(){
                  console.log('AJAX load did not work');
                  alert("error");
                  }
              });
        } else {
            // $('<input>').attr({type: 'hidden', id:'authorId',name: 'authorId',value: id}).appendTo('#authorForm');
        $.ajax({
            type: "GET",
            url: `/api/authors`,
            success: function(data){
                var selectBox = $('#authorBox');
                selectBox.empty();
                $.each(data, function (key, value) {
                    selectBox.append($('<option>').text(value.lname).attr('value', value.id));
                });
    
                   
              },
             error: function(){
              console.log('AJAX load did not work');
              alert("error");
              }
          });

          $.ajax({
            type: "GET",
            url: `/api/publisher`,
            success: function(data){

                var selectBox = $('#publisherBox');
                selectBox.empty();
                $.each(data, function (key, value) {
                    selectBox.append($('<option>').text(value.name).attr('value', value.id));
                });
    
                   
              },
             error: function(){
              console.log('AJAX load did not work');
              alert("error");
              }
          });

         
        

        
        }
       
        
    });

    $("#bookSubmit").on('click', function (e) {
        e.preventDefault();
        var data = $('#bookForm')[0];
        console.log(data);
        let formData = new FormData(data);
        console.log(formData);
        for (var pair of formData.entries()) {
            console.log(pair[0] + ', ' + pair[1]);
        }
        $.ajax({
            type: "POST",
            url: "/api/book",
            data: formData,
            contentType: false,
            processData: false,
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
            dataType: "json",
            success: function (data) {
                console.log(data)
                $("#bookModal").modal("hide");
                // var img = "<img src='storage/" + data.book.images + "' width='200px', height='200px'/>";
                var tr = $("<tr>");
                tr.append($("<td>").html(data.book.id));
                tr.append($("<td>").html(data.book.author_id));
                tr.append($("<td>").html(data.book.publisher_id));
                tr.append($("<td>").html(data.book.title));
                tr.append($("<td>").html(data.book.genre));
                tr.append($("<td>").html(data.book.publication));
                tr.append($("<td>").html(data.book.language));
                tr.append($("<td>").html(data.book.reviews));
                tr.append($("<td>").html(data.book.summary));
                tr.append("<td align='center'><button data-toggle='modal' data-target='#bookModal' class='btn btn-sm btn-primary edit-btn' data-id='" + data.id + '">Edit</button>/td>');
                tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='" + data.id + "'>Delete</button></td>");
                $("#bookBody").prepend(tr);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });


    $("#bookUpdate").on('click', function (e) {
        e.preventDefault
        var id = $('#bookId').val();
        var $row = $('tr td > button[data-id="' + id + '"]').closest('tr');
        console.log("id is ::"+id)
        var data = $('#bookForm')[0];
        console.log(data);
        let formData = new FormData(data);
        formData.append('_method', 'PUT')
        $.ajax({
            type: "POST",
            url: `/api/book/${id}`,
            data: formData,
            contentType: false,
            processData: false,
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
            dataType: "json",
            success: function (data) {
                console.log(data);
                
                $('#bookModal').modal('hide')
                $row.remove()
                var img = "<img src='storage/" + data.book.images + "' width='200px', height='200px'/>";
                var tr = $("<tr>");
                tr.append($("<td>").html(data.book.id));
                tr.append($("<td>").html(data.book.author_id));
                tr.append($("<td>").html(data.book.publisher_id));
                tr.append($("<td>").html(data.book.title));
                tr.append($("<td>").html(data.book.genre));
                tr.append($("<td>").html(data.book.publication));
                tr.append($("<td>").html(data.book.language));
                tr.append($("<td>").html(data.book.reviews));
                tr.append($("<td>").html(data.book.summary));
                tr.append("<td align='center'><button data-toggle='modal' data-target='#bookModal' class='btn btn-sm btn-primary edit-btn' data-id='" + data.book.id + '">Edit</button>/td>');
                tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='" + data.book.id + "'>Delete</button></td>");
                $("#bookBody").prepend(tr);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });





})