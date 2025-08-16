<!DOCTYPE html>
<html>
<head>
    <title>Register - Travel Explorer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Register</h2>
    <form action="/dashboard" method="get" class="w-50 mx-auto">
        <div class="form-group">
            <label>Full Name</label>
            <input type="text" class="form-control" required/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" required/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" required/>
        </div>
        <button type="submit" class="btn btn-success btn-block">Register</button>
    </form>
</div>
</body>
</html>
