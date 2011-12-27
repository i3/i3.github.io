// vim:ts=4:sw=4:expandtab
// © 2011 Michael Stapelberg

function initDownloads() {
    var old = $('.oldversion');
    old.hide();
    $('table#downloads').after('<a id="showOldDownloads" href="#">display ' +
                     old.length + ' old versions…</a>');
    $('#showOldDownloads').click(function() {
        $('.oldversion').show('fast');
        $(this).hide();
        return false;
    });
}
