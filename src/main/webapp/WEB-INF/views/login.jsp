<form action="/login" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required/>
    </div>
    <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required/>
    </div>
    <button type="submit" class="btn btn-primary btn-block">Login</button>
    <p class="text-danger mt-2">${error}</p>
</form>
