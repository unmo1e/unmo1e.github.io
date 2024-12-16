// registe the service worker
if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register("/sw.js");
}

navigator.serviceWorker.ready.then((registration) => {
    // if url has a fragment (the hash), send message then reset url
    if (window.location.hash)
    {
	// sending current selected theme
	if (window.location.hash.includes("light"))
	    registration.active.postMessage("set-current-theme-light");
	else if (window.location.hash.includes("dark"))
	    registration.active.postMessage("set-current-theme-dark");

	// reset the url
	history.replaceState(null, null, ' ');
    }

    // request for the path to css file
    registration.active.postMessage("theme-css-request");

    // receive message from service worker
    navigator.serviceWorker.addEventListener('message', (event) => {
	console.log(`Message received by webpage: ${event.data}`);
	document.getElementById("css-link").href = event.data;
    });
});
