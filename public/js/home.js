$(document).ready(function () {
    $('[data-toggle="popover"]').popover();   
    var count = 0;
    var upperLimit = 21;
    var working = false;
    $.ajax({
        type: "GET",
        url: "/api/fetchData",
        dataType: 'json',
        success: function (data) {
            console.log(data[1]);
            for (var i = count; i < upperLimit; i++) {
                console.log(data[i].fname);
                count++;
                var div = $("<div>");
                    
                if (data[i].images === null) {
                    img = "images/11.jpg";
                } else {
                    img = data[i].images;
                }

                    div.append($('<div class="book-card" id="bookCard" data-toggle="modal" data-target="#exampleModal">      <div class="book-preview">        <div class="img-container">          <img src="storage/'+img+'" alt="Book Image" class="book-img" data-toggle="popover" data-content="Some content inside the popover">        </div>        <div class="book-label">          <div class="book-title">            '+data[i].title+'          </div>          <div class="author">            <span style="color:gray">by</span> <span class="au">'+data[i].fname+' '+data[i].lname+'</span>          </div>        </div>      </div>      <button class="borrowBtn borrow-btn" data-title="'+data[i].title+'" data-id="'+data[i].id+'">Add to Borrows</button>    </div>'));

                    

                    $("#bookDeck").append(div.hide().fadeIn(1000));
                if (count >= upperLimit) {
                    upperLimit = upperLimit + 21;
                    return false; 
                }
            }
            $.each(data, function (key, value) {
                
                
                    
            });
            
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });

    $(window).scroll(function() {
        if ($(this).scrollTop() + 1 >= $('body').height() - $(window).height()) {
                if (working == false) {
                        working = true;
                        $.ajax({
                                type: "GET",
                                url: "/api/fetchData",
                                processData: false,
                                contentType: false,
                                data: '',
                                success: function (data) {
                                    console.log(data[1]);
                                    for (var i = count; i < upperLimit; i++) {
                                        console.log(data[i].fname);
                                        count++;
                                        var div = $("<div>");
                                            
                                        if (data[i].images === null) {
                                            img = "images/11.jpg";
                                        } else {
                                            img = data[i].images;
                                        }
                        
                                            div.append($('<div class="book-card" id="bookCard" >      <div class="book-preview">        <div class="img-container">          <img src="storage/'+img+'" alt="Book Image" class="book-img" data-toggle="popover" data-content="Some content inside the popover">        </div>        <div class="book-label">          <div class="book-title">            '+data[i].title+'          </div>          <div class="author">            <span style="color:gray">by</span> <span class="au">'+data[i].fname+' '+data[i].lname+'</span>          </div>        </div>      </div>      <button class="borrowBtn borrow-btn" data-title="'+data[i].title+'" data-id="'+data[i].id+'">Add to Borrows</button>    </div>'));
                        
                                            
                        
                                            $("#bookDeck").append(div.hide().fadeIn(1000));
                                        if (count >= upperLimit) {
                                            upperLimit = upperLimit + 21;
                                            return false; 
                                        }
                                        setTimeout(function() {
                                            working = false;
                                    }, 1000)
                                    }
                                    
                                },
                                error: function(r) {
                                        console.log("Something went wrong!");
                                }
                        });
                }
        }
})

    $.ajax({
        type: "GET",
        url: "/api/retrieveTopAuthors",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            $.each(data, function (key, value) {
                console.log(value.id);
                var div = $("<div>");
                    div.append($('<div class="side-pills"><div class="pills-img">            <img class="book-img" src="storage/images/user.png" alt="Author">          </div>          <div class="pills-name">'+value.first_name +' '+value.last_name+'</div>          <div class="pills-review"><div class="review"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">            <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>          </svg> '+value.average_review+'</div></div>        </div>'));
                    $("#authorPills").append(div.hide().fadeIn(1000));

                    
            });
            
        },
        error: function () {
            console.log('AJAX load did not work');
            alert("error");
        }
    });
    

    $('#bookDeck').on('click', 'button.borrow-btn', function (e) {
        var id = $(this).data('id');
        var title = $(this).data('title');
        console.log("id is " + id + title); // Make sure this line is correctly logged
        var $card = $('#card' + id); // Select the card element to remove
        // console.log(table);
        e.preventDefault();
        bootbox.confirm({
            message: "Do you want to borrow this book?",
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
                if (result) {
                    var div = $("<div>");
                    
                    div.prepend($('<div class="notif">      <div class="notif-image">        <img src="storage/images/book-icon.png" alt="img">      </div>      <div class="notif-body">        <div style="font-weight:500"class="notif-title">'+title+'                  </div>        <div class="notif-text">          This book is added to your borrowing list.        </div>      </div>      <div class="notif-close">        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">          <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z"/>        </svg>      </div>    </div>'));

                    $("#notification-container").append(div.hide().fadeIn(1000));
                    $("#bookData").val(id);
                    requestBorrow(id);

                    setTimeout(function() {
                        div.fadeOut(1000, function() {
                            $(this).remove();
                        });
                    }, 10000);
                } else {
                    console.log('User canceled borrowing the book.');
                }
            }
        });
    })

    $(document).on('click', '.notif-close', function() {
        $(this).closest('.notif').fadeOut(500, function() {
            $(this).remove();
        });
    });

    function requestBorrow(bookId) {
        var data = $('#borrowData')[0];
        let formData = new FormData(data);
        console.log(formData);
        for (var pair of formData.entries()) {
            console.log(pair[0] + ', ' + pair[1]);
        }
        console.log(data);
        $.ajax({
            type: "POST",
            url: "/api/BorrowRequest",
            data: formData,
            contentType: false,
            processData: false,
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
})