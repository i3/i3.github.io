<%!
	section = "screens"
%>
<%inherit file="_templates/i3.mako" />

<div id="mask">
</div>

<div id="loading">
</div>

<div id="bigimg">
    <div id="maskouter">
        <div id="maskinner">
            <div id="imgleft">
            </div>
            <div id="imgright">
            </div>
        </div>
    </div>
</div>

<div id="content">

<h2>Latest Video</h2>

<div id="screencasts">
    <div class="video clearfix">
        <a href="http://www.youtube.com/watch?v=pKfP7Ws-CN8" title="Watch i3 screencast v3.δ on YouTube">
        <img src="/img/screencast-3.d.thumb.png" width="240" height="150" border="0" style="float: left">
        </a>
        <div style="float: left">
            <strong>Screencast of v3.δ</strong>
            <p>
            This video (5 min) shows the basic features of i3:
            </p>
            <ul>
                <li>Layouts, Focus, Moving, Workspaces</li>
                <li>dmenu, Floating Windows, Resizing</li>
                <li>Window Borders, Urgency Hint, i3lock, i3status</li>
            </ul>
            <p>
            <a href="http://www.youtube.com/watch?v=pKfP7Ws-CN8">Watch it on YouTube</a> or <a href="/screenshots/screencast-3.d.mkv">download it (2.5 MB)</a>.
            </p>
        </div>
    </div>
<div>

<h2>Screenshots</h2>

<p>
To get a quick impression of i3, have a look at these screenshots.
</p>

<div class="screenshots clearfix">
    <div class="shot">
        <a href="/screenshots/i3-1.png"><img src="/screenshots/i3-1.thumb.png" width="240" border="0"></a><br>
        <span>Vimperator, VIM, MPlayer, dzen2</span>
    </div>

    <div class="shot">
        <a href="/screenshots/i3-2.png"><img src="/screenshots/i3-2.thumb.png" width="240" border="0"></a><br>
        <span>Vimperator, VIM, xpdf, bc</span>
    </div>

    <div class="shot">
        <a href="/screenshots/i3-3.png"><img src="/screenshots/i3-3.thumb.png" width="240" border="0"></a><br>
        <span>PCManFM, ROXTerm, evince</span>
    </div>

    <br>

    <div class="shot">
        <a href="/screenshots/i3-4.png"><img src="/screenshots/i3-4.thumb.png" width="240" border="0"></a><br>
        <span>i3 logo out of terminals</span>
    </div>

    <div class="shot">
        <a href="/screenshots/i3-6.png"><img src="/screenshots/i3-6.thumb.png" width="240" border="0"></a><br>
        <span>VIM, zsh, i3status (FreeBSD)</span>
    </div>

    <div class="shot">
        <a href="/screenshots/i3-7.png"><img src="/screenshots/i3-7.thumb.png" width="240" border="0"></a><br>
        <span>GIMP, urxvt (both floating)</span>
    </div>

    <br>

    <div class="shot">
        <a href="/screenshots/i3-5.png"><img src="/screenshots/i3-5.thumb.png" width="240" border="0"></a><br>
        <span>mc, xosview, MPlayer, irssi, gajim</span>
    </div>

    <div class="shot">
        <a href="/screenshots/i3-8.jpg"><img src="/screenshots/i3-8.thumb.jpg" width="240" border="0"></a><br>
        <span>git, synergy, htop, urxvt</span>
    </div>

</div>

</div>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js">
</script>
<script type="text/javascript" src="/js/jquery.mousewheel.js">
</script>
<script type="text/javascript" src="/js/jquery.ba-hashchange.js">
</script>
<script type="text/javascript">
$(document).ready(function() {
    $('.shot span').css('color', '#888');

    $('.shot').mouseover(function() {
        $(this).children('span').css('color', 'white');
    });

    $('.shot').mouseout(function() {
        $(this).children('span').css('color', '#888');
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
        //console.log('event = ' + event + ', delta = ' + delta);

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
            element.css({ 'position': 'absolute', 'top':dims.top + 'px', 'left':dims.left + 'px' });
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
            //console.log('image already in cache');
            loadcomplete();
        } else {
            //console.log('loading image');
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
    
    $('.shot img').click(function() {
        var winH = $(window).height();
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        var full = $(this).parent().attr('href');
        var mask = $('#mask');
        mask.css({ 'width': maskWidth, 'height': maskHeight }).show();

        var loading = $('#loading');
        loading.show();

        loadimage(full, undefined, false);

// TODO: also preload the next image?

        // don't follow the link
        return false;
    });

    var imgright = function() {
        var idx = $.inArray($('#maskinner img').attr('src'), images);
        var next = images[idx+1];

        if (next === undefined) {
            //console.log('there is no next image');
            return false;
        }

        //console.log('loading next one: ' + next);
        // slide out the current image
        var winW = $(window).width();
        $('#maskinner img').animate({ 'left': '-=' + (winW - 64) }, 'fast', function() {
            $(this).remove();
        });
        loadimage(next, 'left', false);

        // disable mousewheel handler during load (will be re-enabled after the animation)
        $(window).unmousewheel(wheelhandler);

        return true;
    };
    $('#imgright').click(imgright);

    var imgleft = function() {
        var idx = $.inArray($('#maskinner img').attr('src'), images);
        var prev = images[idx-1];

        if (prev === undefined) {
            //console.log('there is no next image');
            return false;
        }

        //console.log('loading prev one: ' + prev);
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
            loadimage(url, undefined, true);
        }
    });

});
</script>
