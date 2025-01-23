const toggleContainer = document.getElementById('theme-toggle-container');
const toggleButton = document.getElementById('theme-toggle');
const themeLabel = document.getElementById('theme-label');
const body = document.body;
const header = document.querySelector('header');
const headerHeight = header.offsetHeight;
// Initialize theme
const currentTheme = localStorage.getItem('theme') || 'dark';
body.setAttribute('data-theme', currentTheme);
themeLabel.textContent = currentTheme === 'light' ? 'Light Mode' : 'Dark Mode';
toggleButton.innerHTML =
    currentTheme === 'light' ? '<i class="sun-icon"></i>' : '<i class="moon-icon"></i>';

// Toggle theme
toggleContainer.addEventListener('click', () => {
    const theme = body.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    body.setAttribute('data-theme', theme);
    themeLabel.textContent = theme === 'light' ? 'Light Mode' : 'Dark Mode';
    toggleButton.innerHTML =
        theme === 'light' ? '<i class="sun-icon"></i>' : '<i class="moon-icon"></i>';
    localStorage.setItem('theme', theme);
});

// Function to add fixed position on scroll
window.addEventListener('scroll', () => {
    if (window.scrollY > headerHeight) {
        header.style.position = 'fixed';
        header.style.top = '0';
        header.style.left = '0';
        header.style.width = '100%';
        header.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.2)';
        header.style.zIndex = '1000';
        document.body.style.paddingTop = `${headerHeight}px`;  // Push content down
    } else {
        header.style.position = 'static';
        header.style.boxShadow = 'none';
        document.body.style.paddingTop = '0';
    }
});