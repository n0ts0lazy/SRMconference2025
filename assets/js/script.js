document.addEventListener("DOMContentLoaded", function () {
    const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

    if (prefersDark) {
        console.log("Dark mode is active.");
    } else {
        console.log("Light mode is active.");
    }
});
