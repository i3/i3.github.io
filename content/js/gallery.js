// Vanilla JS basic gallery - use as you please
// © 2020 Sander De la Marche

const screens = [];
const gallery = document.querySelector('.gallery');
const loader = document.querySelector('.loading');
const focus = document.querySelector('.focus');
const shots = document.querySelectorAll('.shot');

for (let shot of shots) {
    let thumbnail = shot.querySelector('img');
    let source = shot.querySelector('a').href;

    let screenshot = {
        'url': source,
        'filename': source.split('/').pop(),
        'description': thumbnail.alt
    }

    screens.push(screenshot)

    // Add the click event that will open the gallery
    shot.addEventListener('click', openGallery)
}

// Close the gallery when we click anywhere that isn't forward/back
gallery.addEventListener('click', function() {
    closeGallery();
})

// Back
const leftButton = document.querySelector('.left');
leftButton.addEventListener('click', function(event) {
    loadPrevious();
    event.stopPropagation();
});

// Forward
const rightButton = document.querySelector('.right');
rightButton.addEventListener('click', function(event) {
    loadNext();
    event.stopPropagation();
});

// Key events
document.addEventListener('keydown', function(event) {
    switch (event.keyCode) {
        // left arrow
        case 37:
            loadPrevious();
            break;
        // right arrow
        case 39:
            loadNext();
            break;
        // escape
        case 27:
            closeGallery();
            break;
    }
});

function openGallery(event) {
    // Show the gallery
    gallery.style.display = 'flex';

    // Toggle the loader icon
    loader.style.display = 'block'

    // Get the URL of the clicked figure
    let clicked = event.target.parentNode.href;

    // Check the URL to our array of screenshots and load the match
    for (let i = 0; i < screens.length; i++) {
        if (screens[i].url === clicked) {
            loadImage(i);
        }
    }

    // Don't follow the link
    event.preventDefault()
}

function loadImage(index) {
    let highlight = screens[index];

    if (highlight === undefined) {
        return false;
    }

    focus.style.backgroundImage = "url('" + highlight.url + "')";
    focus.dataset.current = index;

    gallery.querySelector('.description').innerHTML = highlight.description;

    gallery.querySelector('.filename').innerHTML = highlight.filename;

    loader.style.display = 'none';
}

function loadPrevious() {
    const currentIndex = parseInt(focus.dataset.current);
    loadImage(currentIndex - 1);
}

function loadNext() {
    const currentIndex = parseInt(focus.dataset.current);
    loadImage(currentIndex + 1);
}

function closeGallery() {
    gallery.style.display = 'none';
}