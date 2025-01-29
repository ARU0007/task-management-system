<html>
<head><title>Hello World!</title>
</head>
<body>
<%--Expression Language ${name}  --%>
<div class="container"><h1>Login </h1>
<form method="post">
    <pre>${errorMessage}</pre>
    Name: <input type="text" name="name">
    Password: <input type="password" name="password">
    <input type="submit">
</form>
</div>
</body>
</html>