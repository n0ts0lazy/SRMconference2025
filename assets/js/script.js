const toggleContainer = document.getElementById('theme-toggle-container');
const toggleButton = document.getElementById('theme-toggle');
const themeLabel = document.getElementById('theme-label');
const body = document.body;

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
