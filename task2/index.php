<!DOCTYPE html>
<html>
<head>
    <title>Register & Login</title>
</head>
<body>

<h2>User System</h2>

<form action="register.php" method="post">
    <h3>Register</h3>

    Username:
    <input type="text" name="username" required><br><br>

    Password:
    <input type="password" name="password" required><br><br>

    <input type="submit" value="Register">
</form>

<hr>

<form action="login.php" method="post">
    <h3>Login</h3>

    Username:
    <input type="text" name="username" required><br><br>

    Password:
    <input type="password" name="password" required><br><br>

    <input type="submit" value="Login">
</form>

</body>
</html>