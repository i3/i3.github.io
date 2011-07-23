// vim:ts=4:sw=4:expandtab
// © 2011 Michael Stapelberg

function initGallery() {
    $('.shot span').css('color', '#888');

    $('#imgleft, #imgright').mouseover(function() {
        $(this).css('opacity', 0.9);
    });

    $('#imgleft, #imgright').mouseout(function() {
        $(this).css('opacity', 0.7);
    });

    $('.shot img').mouseover(function() {
        $(this).parent().parent().children('span').css('color', 'white');
    });

    $('.shot img').mouseout(function() {
        $(this).parent().parent().children('span').css('color', '#888');
    });

    // build an array of all images (full URLs)
    var images = [];
    var cnt = 0;
    $('.shot a').each(function(idx, element) {
        images[cnt++] = $(element).attr('href');
    });

    // handlers for mousewheel scrolling
    // defined here because we need to enable it after the animation finished
    $(window).mousewheel(function(event, delta) {
        // if we are not in the slideshow mode, process the event as normal
        return (!$('#mask').is(':visible'));
    });

    var wheelhandler = function(event, delta) {
        // if we are not in the slideshow mode, process the event as normal
        if (!$('#mask').is(':visible')) {
            return true;
        }

        if (delta < 0) {
            // scroll down
            imgright();
            return false;
        } else if (delta > 0) {
            // scroll up
            imgleft();
            return false;
        }
    };

    $(window).mousewheel(wheelhandler);

    var loadimage = function(url, direction, fromhash) {
        // now load the image
        var img = new Image();
        img.src = url;

        var loadcomplete = function() {
            var winW = $(window).width();
            var winH = $(window).height();
            var max_w = winW - (2 * 64);
            var max_h = winH - 64;
            var dims = {
                'top': 0,
                'left': 0,
                'width': (img.width > max_w ? max_w : img.width),
                'height': img.height
            };
            dims.height = (dims.width / img.width) * img.height;
            if (dims.height > max_h) {
                dims.height = max_h;
                dims.width = (dims.height / img.height) * img.width;
            }
            dims.top = (winH - dims.height) / 2;
            dims.left = ((max_w - dims.width) / 2) + 64;
            $('#loading').hide();
            var element = $('<img>');
            element.attr({ 'src': url, 'width':dims.width });
            element.css({ 'z-index': 21, 'position': 'absolute', 'top':dims.top + 'px', 'left':dims.left + 'px' });
            if (direction !== undefined) {
                // slide from right to left
                if (direction === 'left') {
                    element.css({ 'left':winW + 'px' });
                    element.animate({ 'left': '-=' + (winW - dims.left) }, 'fast', function() {
                        $(window).mousewheel(wheelhandler);
                    });
                } else {
                    element.css({ 'left':'-' + winW + 'px' });
                    element.animate({ 'left': '+=' + (winW + dims.left) }, 'fast', function() {
                        $(window).mousewheel(wheelhandler);
                    });
                }
            }
            $('#maskinner').append(element);
            $('#maskinner').show();

            $('#bigimg').show();

            if (!fromhash && window.history.pushState) {
                window.history.pushState(undefined, 'i3 screenshot: ' + url, "#" + url);
            }
        };

        if (img.complete) {
            loadcomplete();
        } else {
            img.onload = loadcomplete;
        }
    };

    // clicking anywhere outside the image will bring you back to the page
    var masks = $('#mask, #bigimg');

    var endshow = function(fromhash) {
        masks.hide();
        $('#maskinner img').remove();

        if (!fromhash && window.history.pushState) {
            window.history.pushState(undefined, 'i3 screenshots', '#');
        }
    };

    masks.click(function() {
        endshow(false);
    });
    var showmask = function() {
        var winH = $(window).height();
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        var mask = $('#mask');
        mask.css({ 'width': maskWidth, 'height': maskHeight }).show();
    };

    $('.shot img').click(function() {
        showmask();

        var full = $(this).parent().attr('href');
        $('#loading').show();

        loadimage(full, undefined, false);

// TODO: also preload the next image?

        // don't follow the link
        return false;
    });

    var imgright = function() {
        var idx = $.inArray($('#maskinner img').attr('src'), images);
        var next = images[idx+1];

        if (next === undefined) {
            return false;
        }

        $('#imgright').css('opacity', 1.0).animate({ opacity: 0.7 }, 500);
        // slide out the current image
        var winW = $(window).width();
        $('#loading').show();
        $('#maskinner img').animate({ 'left': '-=' + (winW - 64) }, 'fast', function() {
            $(this).remove();
        });
        loadimage(next, 'left', false);

        // disable mousewheel handler during load (will be re-enabled after the animation)
        $(window).unmousewheel(wheelhandler);

        return false;
    };
    $('#imgright').click(imgright);

    var imgleft = function() {
        var idx = $.inArray($('#maskinner img').attr('src'), images);
        var prev = images[idx-1];

        if (prev === undefined) {
            return false;
        }

        $('#imgleft').css('opacity', 1.0).animate({ opacity: 0.7 }, 500);
        // slide out the current image
        var winW = $(window).width();
        $('#maskinner img').animate({ 'left': '+=' + winW }, 'fast', function() {
            $(this).remove();
        });
        loadimage(prev, 'right', false);

        // disable mousewheel handler during load (will be re-enabled after the animation)
        $(window).unmousewheel(wheelhandler);

        return false;
    };
    $('#imgleft').click(imgleft);

    // setup key press handlers for the left/right arrow keys
    var keydown = function(e) {
        switch (e.keyCode) {
            // left arrow
            case 37:
                imgleft();
                break;
            // right arrow
            case 39:
                imgright();
                break;
            // escape
            case 27:
                endshow(false);
                break;
        }
    };

    if ($.browser.mozilla) {
        $(document).keypress(keydown);
    } else {
        $(document).keydown(keydown);
    }

    if (location.hash.length > 0) {
        var url = location.hash.substring(1);
        showmask();
        loadimage(url, undefined, true);
    }

    $(window).hashchange(function() {
        if (location.hash.length === 0) {
            endshow(true);
            return;
        }
        var url = location.hash.substring(1);
        if (url.length === 0) {
            endshow(true);
        } else {
            showmask();
            loadimage(url, undefined, true);
        }
    });
}
