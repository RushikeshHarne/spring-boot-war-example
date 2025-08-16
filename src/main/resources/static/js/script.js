function fakeLogin(event) {
  event.preventDefault();
  window.location.href = "dashboard.html";
}

function fakeRegister(event) {
  event.preventDefault();
  alert("Account created successfully! Now login.");
  window.location.href = "login.html";
}

// Fetch backend hello message and display in dashboard
document.addEventListener("DOMContentLoaded", () => {
  const welcomeBox = document.getElementById("welcome-box");
  if (welcomeBox) {
    fetch("/")
      .then(res => res.text())
      .then(data => {
        welcomeBox.textContent = data;
      })
      .catch(err => {
        welcomeBox.textContent = "Error loading message";
        console.error(err);
      });
  }
});
