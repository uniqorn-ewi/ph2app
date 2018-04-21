$(function() {
    const topBtn = $('#page-top-btn');
    topBtn.hide();
    
    $(window).scroll(function () {
        if ($(this).scrollTop() > 119) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    
    topBtn.click(function () {
        $('body, html').animate({
            scrollTop: 0
        }, 'slow');
        return false;
    });
})
;
