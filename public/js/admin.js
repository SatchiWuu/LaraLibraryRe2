$(document).ready(function() {
    // Debounce function
function debounce(func, wait) {
    let timeout;
    return function(...args) {
        clearTimeout(timeout);
        timeout = setTimeout(() => func.apply(this, args), wait);
    };
}

// Your debounced AJAX request function
function fetchBorrowData() {
    $.ajax({
        type: "GET",
        url: `/api/retrieveAllBorrow`,
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $.each(data, function (key, value) {
                console.log(value);
                let id2 = value.id;

                let card = $("<div id='bookCard" + id2 + "' class='mt-3 card text-center'>");
                card.append("<div class='card-header'>" + value.status + " -- " + value.fname + " " + value.lname + "</div>");

                let cardbody = $('<div id="bookBody" class="card-body">');
                cardbody.append('<h5 class="card-title">Books Borrowed</h5>')

                let cardText = $('<p class="card-text text-left">')

                $.ajax({
                    type: "GET",
                    url: `/api/retrieveBorrowedBooks/${id2}`,
                    dataType: 'json',
                    success: function (data2) {
                        console.log(data2);
                        $.each(data2, function (key2, value2) {
                            console.log('form' + value2);
                            cardText.append(value2.title + ', ')
                        });
                    },
                    error: function () {
                        console.log('AJAX load did not work');
                        alert("error");
                    }
                });

                let controls = $('<div class="d-flex flex-row justify-content-center">')

                let cardBUtton2 = $('<button id="returnBtn" data-id="' + value.id + '" class="mx-1 returnBtn btn btn-info ">');
                let cardBUtton = $('<button id="acceptBtn" data-id="' + value.id + '" class="mx-1 acceptBtn btn btn-info ">');
                if (value.status === 'Books Returned') {
                    cardBUtton.attr('disabled', 'disabled');
                    cardBUtton2.attr('disabled', 'disabled');
                } else if (value.status === 'Request Pending') {
                    cardBUtton2.attr('disabled', 'disabled');
                } else {
                    cardBUtton.attr('disabled', 'disabled');
                }
                cardBUtton.append('Confirm Request');
                cardBUtton2.append('Confirm Return');

                let cardFoot = $('<div class="card-footer text-muted">');
                cardFoot.append('Date Requested: ' + value.date_borrowed);

                $(cardbody).append(cardText);
                $(controls).append(cardBUtton);
                $(controls).append(cardBUtton2);
                $(cardbody).append(controls);
                $(card).append(cardbody);
                $(card).append(cardFoot);

                if (value.status === 'Books Returned') {
                    $("#borrowAllCompleted").append(card);
                } else if (value.status === 'Request Pending') {
                    $("#borrowAllPending").append(card);
                } else {
                    $("#borrowAllBorrowing").append(card);
                }
            });
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });
}

// Debounce the fetchBorrowData function
const debouncedFetchBorrowData = debounce(fetchBorrowData, 300);

// Call the debounced function
debouncedFetchBorrowData();

    $('#borrowAllPending').on('click', '.acceptBtn', function (e) {
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
                $('#bookCard' + id).fadeOut(400, function() {
                    $(this).remove();
                });
                var card = $("<div id='bookCard"+id+"' class='mt-3 card text-center border border-warning'>");
                card.append("<div class='card-header'>Newly Borrowed</div>");

                 var cardbody = $('<div id="bookBody" class="card-body">');
                 cardbody.append('<h5 class="card-title">Books Borrowed</h5>')

                 var cardText = $('<p class="card-text text-left">')

                $.ajax({
                    type: "GET",
                    url: `/api/retrieveBorrowedBooks/${id}`,
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

                var cardBUtton2 = $('<button id="returnBtn" data-id="'+data.borrows.id+'" class="mx-1 returnBtn btn btn-info ">');
                var cardBUtton = $('<button id="acceptBtn" data-id="'+data.borrows.id+'" class="mx-1 acceptBtn btn btn-info ">');
                if (data.borrows.status === 'Books Returned') {
                    cardBUtton.attr('disabled', 'disabled');
                    cardBUtton2.attr('disabled', 'disabled');
                } else if (data.borrows.status === 'Request Pending') {
                    cardBUtton2.attr('disabled', 'disabled');
                } else {
                    cardBUtton.attr('disabled', 'disabled');
                }
                cardBUtton.append('Confirm Request');

                
                
                cardBUtton2.append('Confirm Return');

                var cardFoot = $('<div class="card-footer text-muted">');
                cardFoot.append('Date Requested: '+data.borrows.date_borrowed);

                $(cardbody).append(cardText);
                $(controls).append(cardBUtton);
                $(controls).append(cardBUtton2);
                $(cardbody).append(controls);
                $(card).append(cardbody);
                $(card).append(cardFoot);
                $("#borrowAllBorrowing").prepend(card.hide());

                card.fadeIn(400);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });

    $('#borrowAllBorrowing').on('click', '.returnBtn', function (e) {
        e.preventDefault();
        console.log(e.relatedTarget);
        var id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            type: "GET",
            url: `/api/confirmReturn/${id}`,
            dataType: 'json',
            success: function (data) {
                $('#bookCard' + id).fadeOut(400, function() {
                    $(this).remove();
                });
                var card = $("<div id='bookCard"+id+"' class='mt-3 card text-center border border-success'>");
                card.append("<div class='card-header'>Book Returned</div>");

                 var cardbody = $('<div id="bookBody" class="card-body">');
                 cardbody.append('<h5 class="card-title">Books Borrowed</h5>')

                 var cardText = $('<p class="card-text text-left">')

                $.ajax({
                    type: "GET",
                    url: `/api/retrieveBorrowedBooks/${id}`,
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

                var cardBUtton2 = $('<button id="returnBtn" data-id="'+data.borrows.id+'" class="mx-1 returnBtn btn btn-info ">');
                var cardBUtton = $('<button id="acceptBtn" data-id="'+data.borrows.id+'" class="mx-1 acceptBtn btn btn-info ">');
                if (data.borrows.status === 'Books Returned') {
                    cardBUtton.attr('disabled', 'disabled');
                    cardBUtton2.attr('disabled', 'disabled');
                } else if (data.borrows.status === 'Request Pending') {
                    cardBUtton2.attr('disabled', 'disabled');
                } else {
                    cardBUtton.attr('disabled', 'disabled');
                }
                cardBUtton.append('Confirm Request');

                
                
                cardBUtton2.append('Confirm Return');

                var cardFoot = $('<div class="card-footer text-muted">');
                cardFoot.append('Date Requested: '+data.borrows.date_borrowed);

                $(cardbody).append(cardText);
                $(controls).append(cardBUtton);
                $(controls).append(cardBUtton2);
                $(cardbody).append(controls);
                $(card).append(cardbody);
                $(card).append(cardFoot);
                $("#borrowAllCompleted").prepend(card.hide());

                card.fadeIn(400);
            },
            error: function (error) {
                console.log(error);
            }
        });
    });
});