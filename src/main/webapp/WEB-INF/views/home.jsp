<!DOCTYPE html>
<html>
<head>
    <title>Travel Explorer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">Travel Explorer</a>
  <div class="ml-auto">
    <a href="/login" class="btn btn-outline-light btn-sm">Login</a>
    <a href="/register" class="btn btn-warning btn-sm ml-2">Register</a>
  </div>
</nav>

<div class="container mt-4">
  <h2 class="text-center">Top Travel Destinations</h2>
  <div class="row">
    <div class="col-md-4 mb-3" th:each="city : ${cities}">
      <div class="card">
        <img src="https://source.unsplash.com/400x200/?goa" class="card-img-top" alt="Goa">
        <div class="card-body">
          <h5 class="card-title">Goa</h5>
          <p class="card-text">Famous for beaches, parties, and Portuguese culture.</p>
        </div>
      </div>
    </div>
    <!-- Repeat for 10 cities: Goa, Mumbai, Pune, Delhi, Jaipur, Manali, Shimla, Kochi, Varanasi, Hyderabad -->
  </div>
</div>
</body>
</html>
