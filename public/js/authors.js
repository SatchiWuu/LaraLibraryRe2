$(document).ready(function () {
    jQuery.validator.setDefaults({
        debug: true,
        success: "valid"
    });

    $('#authorForm').validate({
        rules: {
            lname: {
                required: true,
            },
            fname: {
                required: true,
            },
            address: {
                required: true,
            },
            phone: {
                required: true,
                phoneUS: true,
            },
            gender: {
                required: true,
            },
        },
        messages: {
            lname: {
                required: "Please enter your Last Name"
            },
            fname: {
                required: "Please enter your First Name"
            },
            address: {
                required: "Please enter your Address"
            },
            phone: {
                required: "Please enter your Phone Number",
                phoneUS: "Phone is invald. (Valid format: XXX-XXX-XXXX)"
            },
            gender: {
                required: "Please enter your Gender"
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    })

    new DataTable('#authorTable', {
        ajax: {
            url: 'api/authors',
            headers: {
                 'Authorization': `Bearer ${localStorage.getItem('token')}`
              },
            dataType: 'json',
            dataSrc: ''  // This ensures DataTables expects an array directly from the JSON response
        },
        columns: [
            { data: 'id' },
            { data: 'lname' },
            { data: 'fname' },
            { data: 'address' },
            { data: 'phone' },
            { data: 'gender' },
            {
                data: null,
                render: function (data, type, row) {
                    return '<button data-toggle="modal" data-target="#authorModal" class="btn btn-sm btn-primary edit-btn" data-id="' + row.id + '">Edit</button>';
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

    $("#authorSubmit").on('click', function (e) {
        e.preventDefault();
        var $form = $("form[name='authorForm']");
        if ($form.validate().form()) {
            var data = $('#authorForm')[0];
            console.log(data);
            let formData = new FormData(data);
            console.log(formData);
            for (var pair of formData.entries()) {
                console.log(pair[0] + ', ' + pair[1]);
            }
            $.ajax({
                type: "POST",
                url: "/api/authors",
                data: formData,
                contentType: false,
                processData: false,
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                            'Authorization': `Bearer ${localStorage.getItem('token')}`
                 },
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $("#authorModal").modal("hide");
                    var img = "<img src='storage/" + data.author.images + "' width='200px', height='200px'/>";
                    var tr = $("<tr>");
                    tr.append($("<td>").html(data.author.id));
                    tr.append($("<td>").html(data.author.lname));
                    tr.append($("<td>").html(data.author.fname));
                    tr.append($("<td>").html(data.author.address));
                    tr.append($("<td>").html(data.author.phone));
                    tr.append($("<td>").html(data.author.gender));
                    tr.append("<td align='center'><button data-toggle='modal' data-target='#authorModal' class='btn btn-sm btn-primary edit-btn' data-id='" + data.author.id + "'>Edit</button></td>");
                    tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='" + data.author.id + "'>Delete</button></td>");
                    $("#authorBody").prepend(tr);
                },
                error: function (error) {
                    console.log(error);
                }
            });
        } else {
            e.stopPropagation(); // Prevent modal from closing if validation fails
        }
    });

    $('#authorModal').on('show.bs.modal', function (e) {
        $("#authorForm").trigger("reset");
        $('#authorId').remove()
        $('#image').remove()
        console.log(e.relatedTarget)
        var id = $(e.relatedTarget).attr('data-id');
        console.log(id);

        $('<input>').attr({ type: 'hidden', id: 'authorId', name: 'authorId', value: id }).appendTo('#authorForm');
        $.ajax({
            type: "GET",
            url: `/api/authors/${id}`,
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'Authorization': `Bearer ${localStorage.getItem('token')}`
     },
            success: function (data) {
                // console.log(data);
                $("#authorId").val(data.id);
                $("#lname").val(data.lname);
                $("#fname").val(data.fname);
                $("#gender").val(data.gender);
                $("#address").val(data.address);
                $("#phone").val(data.phone);

                if (data.images !== undefined) {
                    $("#cform").prepend(`<img src='storage/${data.images}' width='200px', height='200px' id="image"   />`)
                } else {

                }

            },
            error: function () {
                console.log('AJAX load did not work');
                alert("error");
            }
        });
    });

    $('#authorTable #authorBody').on('click', 'button.deletebtn', function (e) {
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
                        url: `/api/authors/${id}`,
                        
                        dataType: "json",
                        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                            'Authorization': `Bearer ${localStorage.getItem('token')}`
                 },
                        success: function (data) {
                            console.log(data);
                            $row.fadeOut(800, function () {
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

    $("#authorUpdate").on('click', function (e) {
        e.preventDefault()
        var $form = $("form[name='authorForm']");
        if ($form.validate().form()) {
            var id = $('#authorId').val();
            var $row = $('tr td > button[data-id="' + id + '"]').closest('tr');
            console.log(id)
            // var data = $('#cform')[0];
            let formData = new FormData($('#authorForm')[0]);
            formData.append('_method', 'PUT')
            $.ajax({
                type: "POST",
                url: `/api/authors/${id}`,
                data: formData,
                contentType: false,
                processData: false,
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    'Authorization': `Bearer ${localStorage.getItem('token')}`
         },
                dataType: "json",
                success: function (data) {
                    console.log(data);

                    $('#authorModal').modal('hide')
                    $row.remove()
                    var img = "<img src='storage/" + data.author.images + "' width='200px', height='200px'/>";
                    var tr = $("<tr>");
                    tr.append($("<td style='text-align:center'>").html(data.author.id));
                    tr.append($("<td>").html(data.author.lname));
                    tr.append($("<td>").html(data.author.fname));
                    tr.append($("<td>").html(data.author.address));
                    tr.append($("<td>").html(data.author.phone));
                    tr.append($("<td>").html(data.author.gender));
                    tr.append("<td align='center'><button data-toggle='modal' data-target='#authorModal' class='btn btn-sm btn-primary edit-btn' data-id='" + data.author.id + "'>Edit</button></td>");
                    tr.append("<td><button class='btn btn-sm btn-danger delete-btn deletebtn'  data-id='" + data.author.id + "'>Delete</button></td>");
                    $("#authorBody").prepend(tr);
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