
/*
 * The "show more" toggle for the downloads table
 */
function initOldVersionsToggle(oldVersionWrapper) {
    const oldTrigger = document.querySelector('#showOldDownloads');
    const oldAmount = document.querySelector('#numberOfOldDownloads');

    // Display the number of old versions
    oldAmount.innerHTML = oldVersionWrapper.children.length;

    // When the "show old versions" link is clicked
    oldTrigger.addEventListener('click', (event) => {

        // Stop the link from redirecting
        event.preventDefault();

        // Show the second tbody, with the old versions
        oldVersionWrapper.style.display = 'table-row-group';

        // Hide the expand link
        oldTrigger.style.display = 'none';
    });
}

// If the tbody with old versions is present in the DOM, init the JS toggle
const oldVersionWrapper = document.querySelector('.old');

if (oldVersionWrapper) {
    initOldVersionsToggle(oldVersionWrapper)
}