<html>
<head><title>Hello World!</title>
</head>
<body>
<%--Expression Language ${name}  --%>
<h1>logging to jsp! Welcome </h1>
<form method="post">
    <pre>${errorMessage}</pre>
    Name: <input type="text" name="name">
    Password: <input type="password" name="password">
    <input type="submit">
</form>
</body>
</html>