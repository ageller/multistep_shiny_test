$(document).on('shiny:connected', function() {
    $('.shiny-panel-conditional').each(function() {
        $(this).addClass('fade');
        if ($(this).css('display') !== 'none') {
            $(this).addClass('showit');
        }
    });
});
  
$(document).on('shiny:inputchanged', function(event) {
    $('.shiny-panel-conditional').each(function() {
        if ($(this).css('display') !== 'none') {
            $(this).addClass('showit');
        } else {
            $(this).removeClass('showit');
        }
    });
});
  