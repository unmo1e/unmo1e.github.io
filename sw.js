let current_theme = "dark";

self.addEventListener("activate", (event) => {
    console.log("Hello from service worker!");
});

self.addEventListener("message", (event) => {
    console.log(`Message received by ServiceWorker: ${event.data}`);
    if (event.data === "theme-css-request")
    {
	event.source.postMessage(`/common/org${current_theme}.css`);
    }

    else if (event.data === "set-current-theme-dark")
    {
	current_theme = "dark";
    }

    else if (event.data === "set-current-theme-light")
    {
	current_theme = "light";
    }

    else
    {
	console.log(`Unknown message received by sw: ${event.data}`);
    }
});
