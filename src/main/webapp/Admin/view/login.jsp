<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 6/8/2022
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form action="/login" method="post">
    <div class="container">
        <label ><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>
    </div>

    <div class="container" style="background-color:#f1f1f1">
        <input type="submit" value="submit">
        <input type="reset" value="reset">
    </div>
</form>
</body>
</html>
