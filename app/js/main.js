(function($) {    
    var f12 = 123;
    $('img').fadeIn('slow');
    $('body').on('keyup', function(e) {
        if(e.which === f12) {
            require('nw.gui').Window.get().showDevTools();
        }
    });    
})(jQuery);