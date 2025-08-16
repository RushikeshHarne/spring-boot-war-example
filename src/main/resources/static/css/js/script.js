function fakeLogin(event) {
  event.preventDefault();
  window.location.href = "dashboard.html";
}

function fakeRegister(event) {
  event.preventDefault();
  alert("Account created successfully! Now login.");
  window.location.href = "login.html";
}
