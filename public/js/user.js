$(document).ready(function() {
    function login(formSelector) {
        if ($(formSelector).find('#email').val() == "") {
            $(formSelector).find('#email').addClass('has-error');
            return false;
        } else if ($(formSelector).find('#password').val() == "") {
            $(formSelector).find('#password').addClass('has-error');
            return false;
        } else {
            var data = $(formSelector)[0];
            console.log(data);
            let formData = new FormData(data);
            console.log(formData);
            for (var pair of formData.entries()) {
                console.log(pair[0] + ', ' + pair[1]);
            }
            $.ajax({
                type: "POST",
                url: "/save_login",
                data: formData,
                contentType: false,
                processData: false,
                headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
                dataType: "json",
                success: function (response) {
                    localStorage.setItem('token', response.access_token);
                    window.location.href = '/';
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }
    }
    

    $('#save_form').on('click', function(e) {
        e.preventDefault();
        var data = $('#newClientForm')[0];
        console.log(data);
        let formData = new FormData(data);
        console.log(formData);
        for (var pair of formData.entries()) {
            console.log(pair[0] + ', ' + pair[1]);
        }
        $.ajax({
            type: "POST",
            url: "/api/register",
            data: formData,
            contentType: false,
            processData: false,
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
            dataType: "json",
            success: function (data) {
                console.log(data);
                login('#newClientForm');
            },
            error: function (error) {
                console.log(error);
            }
        });
    });

    $("#loginButton").on('click', function (e) {
        e.preventDefault();
        login('#form_login');
        });
});