//this javascript changes the text when the button is clicked.
$(document).ready(function () {
    $("animate").click(function () {
        $("Label3").toggleClass("typewriter");
    });
});

$(document).ready(function () {
    $("shiny").click(function () {
        $("Label4").toggleClass("shine");
    });
});