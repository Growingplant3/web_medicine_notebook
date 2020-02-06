//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap

//= require jquery
//= require bootstrap-sprockets

//= require jquery.jpostal
$(function(){
    $('input[name="hospital[postcode]"]').jpostal({
        postcode : [
            '[name="hospital[postcode]]"]',
        ],
        address : {
            '[name="hospital[prefecture_code]"]': "%3",
            '[name="hospital[address_city]"]': "%4%5",
            '[name="hospital[address_street]"]': "%6%7"
        }
    });
});