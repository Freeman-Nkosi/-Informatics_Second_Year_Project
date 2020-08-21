

function pinkBG(x) {
    x.style.backgroundColor = "pink";
}

function whiteBG(x) {
    x.style.backgroundColor = "white";
}
$(document).ready(function () {





    console.log("Doc Ready");
    $("#eye").click(
        function () {//setONAction(e->{ gyuhidsfohjk});
            var eyeClass = $("#eye").attr("class");
            var slash = "fa fa-eye-slash";//eyeclosed
            var open = "fa fa-eye";


            if (eyeClass == slash) {
                $("#eye").attr("class", open);//eye is open
                //Show password
                $(".userP").attr('type', 'text');
                $(".userCP").attr('type', 'text');
            }
            else if (eyeClass == open) {
                $("#eye").attr("class", slash);
                $(".userP").attr('type', 'password');
                $(".userCP").attr('type', 'password');

            }

        });
 /**   $(".userP").keyup(function () {
        console.log("Start");
        var userP = $(".useR").val();
        if (userP != "") {
            var reg = /^ [A - Za - z]\w{ 7, 15}$/;
            if (userP.match(reg)) {
                $('.passS').fadeIn();
                $('.passS').css('color:green;');
                $('.passS').val('strong');
            }
            else {
                $('.passS').fadeIn();
                $('.passS').css('color:red;');
                $('.passS').val('weak');
            }
        }
        else if (userP == "") {
            $('.passS').fadeOut();
        }
    });*/


    $('.userCP').keyup(function () {
        var userCP = $('.userCP').val();
        if (userCP != "") {
            if ($('.userCP').val() != $('.userP').val()) {
                $('.cpS').fadeIn();
                $('.cpS').css('color','red');
                $('.cpS').val("Passwords do not match");
                $('.bFat').attr('disabled', true);
                $('.bFat').attr('class', 'btn bFat py-3 px-5');
               
            }
            else {
               
                $('.cpS').fadeOut();
                $('.bFat').attr('disabled', false);
                $('.bFat').attr('class', 'btn bFat btn-primary py-3 px-5');
            }
        }
        else {
            
            $('.bFat').attr('disabled', true);
            $('.bFat').attr('class', 'btn bFat py-3 px-5');
            $('.cpS').fadeOut();
        }

    });

});