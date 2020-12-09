const oldTrigger = document.querySelector('#showOldDownloads');
const oldAmount = document.querySelector('#numberOfOldDownloads');
const oldVersions = document.querySelector('.old');

// Display the number of old versions
oldAmount.innerHTML = oldVersions.children.length;

oldTrigger.addEventListener('click', (event) => {

    // Stop the link from redirecting
    event.preventDefault();

    // Show the second tbody, the one with the old versions
    oldVersions.style.display = 'table-row-group';

    // Hide the expand link
    oldTrigger.style.display = 'none';
});