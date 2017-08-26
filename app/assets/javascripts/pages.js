// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.playlists_showme').on('click', function(e) {
  e.preventDefault();

  $('<div id="dialog-form">Loading</div>').dialog({
        autoOpen: true,
        width: 520,
        modal: true,
        open: function() {
            $(this).append($('#mixtapes').show());
        },
        close: function() {

        }
    });
});
