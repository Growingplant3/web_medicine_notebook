//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap

//= require jquery
//= require bootstrap-sprockets
<<<<<<< HEAD

//= require jquery.jpostal
$(function(){
    $('input[name="#address_zipcode"]').jpostal({
        postcode : [
            '[name="#address_zipcode"]',
        ],
        address : {
            '[name="#address_prefecture_name"]': "%3",
            '[name="#address_city"]': "%4%5",
            '[name="#address_street"]': "%6%7"
        }
    });
});