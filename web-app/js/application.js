if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
                $(this).fadeOut();
            });
    })(jQuery);
}
$(document).ready(function () {
    $('.timepicker-default').timepicker({
        minuteStep:1,
        defaultTime:"00:00",
        showMeridian:false,
        disableFocus:false,
        modalBackdrop:false
    });

    $('.pagination').children().wrapAll('<ul>')
    $('.pagination ul').children().wrap('<li>')

    $('button[type=button].start').bind('click', function () {
        //$(this).text('Pause').removeClass('start btn-primary').addClass('pause btn-info');
        var date, time, timeLeft
        id = $(this).attr('id');
        $.ajax({
            url:urls.challengedTimeUrl + '/' + $(this).attr('id'),
            success:function (data) {
                timeLeft = parseInt(data);
                $('.countdowntime' + id).countdown({
                    until:+timeLeft
                });
            }
        });
    });
});
var urls = {
    challengedTimeUrl:''
}
var id = '';
