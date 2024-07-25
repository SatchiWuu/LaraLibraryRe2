$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: `/api/retrieveAllBorrow`,
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $.each(data, function (key, value) {
                console.log(value);
                id2 = value.id;
                
                var card = $("<div id='bookCard' class='mt-3 card text-center'>");
                card.append("<div class='card-header'>"+value.status+" -- "+value.fname + " " +value.lname+"</div>");

                 var cardbody = $('<div id="bookBody" class="card-body">');
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

                var controls = $('<div class="d-flex flex-row justify-content-center">')


                var cardBUtton = $('<button id="acceptBtn" data-id="'+value.id+'" class="mx-1 acceptBtn btn btn-info ">');
                if (value.status === 'Books Returned') {
                    cardBUtton.attr('disabled', 'disabled');
                }
                cardBUtton.append('Confirm Request');

                var cardBUtton2 = $('<button id="returnBtn" data-id="'+value.id+'" class="mx-1 returnBtn btn btn-info ">');
                if (value.status === 'Request Pending') {
                    cardBUtton2.attr('disabled', 'disabled');
                }
                cardBUtton2.append('Confirm Return');

                var cardFoot = $('<div class="card-footer text-muted">');
                cardFoot.append('Date Requested: '+value.date_borrowed);

                $(cardbody).append(cardText);
                $(controls).append(cardBUtton);
                $(controls).append(cardBUtton2);
                $(cardbody).append(controls);
                $(card).append(cardbody);
                $(card).append(cardFoot);
                $("#borrowAll").append(card);
            });
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });

    $('#borrowAll').on('click', '.acceptBtn', function (e) {
        e.preventDefault();
        console.log(e.relatedTarget);
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            type: "GET",
            url: `/api/confirmRequest/${id}`,
            dataType: 'json',
            success: function (data) {
                console.log(data);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });

    $('#borrowAll').on('click', '.returnBtn', function (e) {
        e.preventDefault();
        console.log(e.relatedTarget);
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            type: "GET",
            url: `/api/confirmReturn/${id}`,
            dataType: 'json',
            success: function (data) {
                console.log(data);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });
});