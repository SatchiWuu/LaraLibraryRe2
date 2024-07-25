$(document).ready(function() {
    var hasInUse = false;

    $.ajax({
        type: "GET",
        url: "/api/retrieveCart",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $.each(data, function (key, value) {
                // console.log(value);
                id = value.id;
                // console.log("check: "+ value.book_id);
                var tr = $("<tr>");

                $.ajax({
                    type: "GET",
                    url: `/api/checkAvailability/${value.book_id}`,
                    dataType: 'json',
                    success: function (data2) {       
                        console.log(data2);  
                        console.log("dsads"+data2.id);
                        if (data2.length == 0) {
                            tr.prepend($("<td >").html(value.id));
                        } else {
                            tr.prepend(
                                $("<td >").html(value.id)
                                    .append("&nbsp; <span class='badge badge-danger'>IN USE</span>")
                            );
                            hasInUse = true;
                        }
                        
                        $.each(data2, function (key2, value2) {
                           
                            // if (value2.id == null) {
                            //     tr.prepend($("<td>").html(value.id));
                            //     console.log("dsadasdassada"+value2.id)
                            // } else {
                            //     tr.prepend($("<td>").html(value.id));
                            //     console.log("tagnian"+value2.id)
                            // }
                        });
                    },
                    error: function () {
                        console.log('AJAX load did not work');
                        alert("error");
                    }
                });
                
                tr.append($("<td>").html(value.title));
                tr.append($("<td>").html(value.fname + " " + value.lname));
                tr.append($("<td>").html(value.genre));
                tr.append($("<td>").html(value.language));
                tr.append("<td><a href='#'  class='btn btn-danger deletebtn' data-id=" + id + ">Delete</a></td>");
                $("#pBody").append(tr);
            });
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });

    function checkAvailability(id) {
        console.log("check: "+id);
        $.ajax({
            type: "GET",
            url: `/api/checkAvailability/${id}`,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                $.each(data, function (key, value) {
                    if (value.id === null) {
                        return false;
                    } else {
                        console.log("value present: " + value.id);
                        return true;
                    }
                });
            },
            error: function () {
                console.log('AJAX load did not work');
                alert("error");
            }
        });
    }

    var id = $('#clientData').val();
    console.log(id);
    $.ajax({
        type: "GET",
        url: `/api/retrieveBorrow/${id}`,
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $.each(data, function (key, value) {
                console.log(value);
                id2 = value.id;
                
                var card = $("<div class='mt-3 card text-center'>");
                card.append("<div class='card-header'>"+value.status+"</div>");

                 var cardbody = $('<div class="card-body">');
                 cardbody.append('<h5 class="card-title">Books Borrowed</h5>')

                 var cardText = $('<p class="card-text text-left">')

                $.ajax({
                    type: "GET",
                    url: `/api/retrieveBorrowedBooks/${id2}`,
                    dataType: 'json',
                    success: function (data2) {
                        console.log(data2);
                        $.each(data2, function (key2, value2) {
                            console.log('form'+value2);
                            cardText.append(value2.title+', ')
                        });
                    },
                    error: function () {
                        console.log('AJAX load did not work');
                        alert("error");
                    }
                });

                var cardFoot = $('<div class="card-footer text-muted">');
                cardFoot.append('Date Requested: '+value.date_borrowed);


                $(cardbody).append(cardText);
                $(card).append(cardbody);
                $(card).append(cardFoot);
                $("#borrowOverview").append(card);
            });
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });

    $("#transact").on('click', function (e) {
        e.preventDefault();

        if(hasInUse) {
            bootbox.alert("Another transaction is already in progress. Cannot proceed.");
        } else {
            $.ajax({
                type: "GET",
                url: "/transact",
                dataType: 'json',
                success: function (data) {
                    console.log(data);
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }

        
    });

    $('#pBody').on('click', '.deletebtn', function (e) {
        e.preventDefault();
        console.log(e.relatedTarget);
        var id = $(this).attr('data-id');
        console.log(id);
        bootbox.confirm({
            message: "do you want to remove this book?",
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
                        url: `/api/removeFromCart/${id}`,
                        headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
                        dataType: "json",
                        success: function (data) {
                            console.log(data);

                           
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    });
            }
        });
    });

    
});