<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Travel Explorer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="/">Travel Explorer</a>
</nav>

<div class="container mt-4">
  <h2 class="text-center">Our Travel Services</h2>
  <div class="row">
    <div class="col-md-3">
      <div class="card">
        <img src="https://source.unsplash.com/400x200/?car" class="card-img-top">
        <div class="card-body text-center">
          <h5>Car / Mini Bus</h5>
          <p>Comfortable travel options available.</p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://source.unsplash.com/400x200/?food" class="card-img-top">
        <div class="card-body text-center">
          <h5>Food</h5>
          <p>Delicious meals during travel.</p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://source.unsplash.com/400x200/?hospital" class="card-img-top">
        <div class="card-body text-center">
          <h5>Medical Assistance</h5>
          <p>Emergency support available anytime.</p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://source.unsplash.com/400x200/?gps" class="card-img-top">
        <div class="card-body text-center">
          <h5>Live Tracking</h5>
          <p>Track your journey live with GPS.</p>
        </div>
      </div>
    </div>
  </div>

  <h4 class="mt-4">Plan Your Trip</h4>
  <form class="form-inline">
    <label class="mr-2">From:</label>
    <select class="form-control mr-2">
      <option>Goa</option><option>Mumbai</option><option>Pune</option><option>Delhi</option><option>Jaipur</option><option>Manali</option><option>Shimla</option><option>Kochi</option><option>Varanasi</option><option>Hyderabad</option>
    </select>
    <label class="mr-2">To:</label>
    <select class="form-control mr-2">
      <option>Goa</option><option>Mumbai</option><option>Pune</option><option>Delhi</option><option>Jaipur</option><option>Manali</option><option>Shimla</option><option>Kochi</option><option>Varanasi</option><option>Hyderabad</option>
    </select>
    <button type="submit" class="btn btn-primary">Search</button>
  </form>
</div>
</body>
</html>
