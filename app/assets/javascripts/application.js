// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//Override the default confirm dialog by rails
$.rails.confirm = function(message, element) 
{ 
    var state = element.data('state');
    var txt = element.text();
    // countdown timer
    var num = 5000;
    // physical number
    function countDown()
        // if more than 0, count down for 1 second
        if(cd > 0){
            setTimeout(countDown,1000);
        }
    }
    if (!state)
    {
        //on click set timer and physical p tag number
        setTimeout(countDown,1000);
        
        element.data('state', 'last');
        element.text('Click to confirm');
        setTimeout(function()
        {
            element.data('state', null);
            element.text(txt);
        }, num);
        return false;
    }   
    else
    {
        return true;
    }
};
$.rails.allowAction = function(element) 
{
    var message = element.data('confirm'),
        answer = false, callback;
    if (!message) { return true; }

    if ($.rails.fire(element, 'confirm')) 
    {
        // le extension.
        answer = $.rails.confirm(message, element);
        callback = $.rails.fire(element, 'confirm:complete', [answer]);
    }
    return answer && callback;
};

$.rails.handleLink = function(link) 
{
    if (link.data('remote') !== undefined) 
    {
        $.rails.handleRemote(link);
    } 
    else if (link.data('method')) 
    {
        $.rails.handleMethod(link);
    }

    return false;
};