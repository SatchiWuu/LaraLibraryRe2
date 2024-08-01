$(document).ready(function () {
    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });

    $('#publisherForm').validate({
        rules: {
            name: {
                required: true,
            },
            country: {
                required: true,
            },
            email: {
                required: true,
            },
            phone: {
                required: true,
                phoneUS: true,
            },
            status: {
                required: true,
            },
            image: {
                required: true,
            }
        },
        messages: {
            name: {
                required: "Please select an Name"
            },
            country: {
                required: "Please select a Country"
            },
            email: {
                required: "Please enter your Email"
            },
            phone: {
                required: "Please enter your Phone",
                phoneUS: "Value should be XXX-XXX-XXXX",
            },
            status: {
                required: "Please enter your Status"
            },
            image: {
                required: "Please upload an Image"
            },
        },
        submitHandler: function (form) {
            form.submit();
        }
    })

    new DataTable('#publisherTable', {
        ajax: {
            headers: {
                'Authorization': `Bearer ${localStorage.getItem('token')}`
             },
            url: 'api/publisher',
            dataType: 'json',
            dataSrc: ''  // This ensures DataTables expects an array directly from the JSON response
        },
        columns: [
            { data: 'id' },
            { data: 'name' },
            { data: 'email' },
            { data: 'phone' },
            { data: 'Status' },
            { data: 'Country' },
            {
                data: null,
                render: function (data, type, row) {
                    return '<button data-toggle="modal" data-target="#publisherModal" class="btn btn-sm btn-primary edit-btn" data-id="' + row.id + '">Edit</button>';
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
    //     url: "/api/publisher",
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
    //             tr.append($("<td>").html(value.name));
    //             tr.append($("<td>").html(value.country));
    //             tr.append($("<td>").html(value.email));
    //             tr.append($("<td>").html(value.phone));
    //             tr.append($("<td>").html(value.status));
    //             tr.append("<td align='center'><a href='#' data-toggle='modal' data-target='#publisherModal' id='editbtn' data-id=" + id + "><i class='fas fa-edit' aria-hidden='true' style='font-size:24px; color:blue'></i></a></td>");
    //             tr.append("<td><a href='#'  class='deletebtn' data-id=" + id + "><i  class='fa fa-trash' style='font-size:24px; color:red' ></a></i></td>");
    //             $("#publisherBody").append(tr);
    //         });
    //     },
    //     error: function () {
    //         console.log('AJAX load did not work');
    //         alert("error");
    //     }
    // });

    $("#publisherSubmit").on('click', function (e) {
        e.preventDefault();
        var $form = $("form[name='publisherForm']");
        if ($form.validate().form()) {
            if ($("#publisherForm").valid()) {
                var data = $('#publisherForm')[0];
                console.log(data);
                let formData = new FormData(data);
                console.log(formData);
                for (var pair of formData.entries()) {
                    console.log(pair[0] + ', ' + pair[1]);
                }
                $.ajax({
                    type: "POST",
                    url: "/api/publisher",
                    data: formData,
                    contentType: false,
                    processData: false,
                    headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                        'Authorization': `Bearer ${localStorage.getItem('token')}`
             },
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        $("#publisherModal").modal("hide");
                        // var img = "<img src='storage/" + data.publisher.images + "' width='200px', height='200px'/>";
                        var tr = $("<tr>");
                        tr.append($("<td>").html(data.publisher.id));
                        tr.append($("<td>").html(data.publisher.name));
                        tr.append($("<td>").html(data.publisher.email));
                        tr.append($("<td>").html(data.publisher.phone));
                        tr.append($("<td>").html(data.publisher.status));
                        tr.append($("<td>").html(data.publisher.phone));
                        tr.append('<td align="center"><button data-toggle="modal" data-target="#publisherModal" class="btn btn-sm btn-primary edit-btn" data-id="' + data.publisher.id + '">Edit</button></td>');
                        tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='"+data.publisher.id+"'>Delete</button></td>");
                        $("#publisherBody").prepend(tr);
                    },

                    error: function (error) {
                        console.log(error);
                    }
                });
            }
        } else {
            e.stopPropagation(); // Prevent modal from closing if validation fails
        }
    });

    $('#publisherModal').on('show.bs.modal', function (e) {

        $("#publisherForm").trigger("reset");
        $('#publisherId').remove()
        $('#image').remove()
        console.log(e.relatedTarget)
        var id = $(e.relatedTarget).attr('data-id');
        console.log("id is :" + id);

        $('<input>').attr({ type: 'hidden', id: 'publisherId', name: 'publisherId', value: id }).appendTo('#publisherForm');
        $.ajax({
            type: "GET",
            url: `/api/publisher/${id}`,
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'Authorization': `Bearer ${localStorage.getItem('token')}`
     },
            success: function (data) {
                // console.log(data);
                $("#publisherId").val(data.id);
                $("#name").val(data.name);
                $("#country").val(data.Country);
                $("#email").val(data.email);
                $("#status").val(data.Status);
                $("#phone").val(data.phone);

                if (data.images !== undefined) {
                    $("#publisherForm").prepend(`<img src='storage/${data.images}' width='200px', height='200px' id="image"   />`)
                } else {

                }

            },
            error: function () {
                console.log('AJAX load did not work');
                alert("error");
            }
        });
    });

    $('#publisherTable #publisherBody').on('click', 'button.deletebtn', function (e) {
        var id = $(this).data('id');
        var $row = $(this).closest('tr');
        console.log(id);
        // console.log(table);
        e.preventDefault();
        bootbox.confirm({
            message: "do you want to delete this publisher?",
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
                        url: `/api/publisher/${id}`,
                        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                            'Authorization': `Bearer ${localStorage.getItem('token')}`
                 },
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

    $("#publisherUpdate").on('click', function (e) {
        e.preventDefault();
        var $form = $("form[name='publisherForm']");
        if ($form.validate().form()) {
            var id = $('#publisherId').val();
            var $row = $('tr td > button[data-id="' + id + '"]').closest('tr');
            console.log(id)
            // var data = $('#cform')[0];
            let formData = new FormData($('#publisherForm')[0]);
            formData.append('_method', 'PUT')
            $.ajax({
                type: "POST",
                url: `/api/publisher/${id}`,
                data: formData,
                contentType: false,
                processData: false,
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    'Authorization': `Bearer ${localStorage.getItem('token')}`
         },
                dataType: "json",
                success: function (data) {
                    console.log(data);

                    $('#publisherModal').modal('hide')
                    $row.remove()
                    var img = "<img src='storage/" + data.publisher.images + "' width='200px', height='200px'/>";
                    var tr = $("<tr>");
                    tr.append($("<td>").html(data.publisher.id));
                    // tr.append($("<td>").html(img));
                    tr.append($("<td>").html(data.publisher.name));
                    tr.append($("<td>").html(data.publisher.email));
                    tr.append($("<td>").html(data.publisher.phone));
                    tr.append($("<td>").html(data.publisher.status));
                    tr.append($("<td>").html(data.publisher.country));
                    tr.append("<td align='center'><button data-toggle='modal' data-target='#publisherModal' class='btn btn-sm btn-primary edit-btn' data-id='" + data.publisher.id + "'>Edit</button></td>");
                    tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='"+data.publisher.id+"'>Delete</button></td>");
                    $('#publisherTable').prepend(tr.hide().fadeIn(5000));
                },
                error: function (error) {
                    console.log(error);
                }
            });
        } else {
            e.stopPropagation(); // Prevent modal from closing if validation fails
        }
    });


})