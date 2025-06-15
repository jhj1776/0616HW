const sideToggle = document.getElementById("sideToggle");
const sidebar = document.querySelector(".sidebar")

sideToggle.addEventListener("click", () => {
    if (sidebar.style.display === 'none' || sidebar.style.display === '') {
        sidebar.style.display = 'flex';
    } else {
        sidebar.style.display = 'none'
    }
})