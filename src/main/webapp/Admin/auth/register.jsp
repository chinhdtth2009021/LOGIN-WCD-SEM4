<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.LOGIN_ADMIN.entity.Account" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 6/8/2022
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    HashMap<String, String> errors = (HashMap<String, String>) request.getAttribute("errors");
    if(errors == null) {
        errors = new HashMap<>();
    }
    Account account = (Account) request.getAttribute("account");
    if(account == null) {
        account = Account.AccountBuilder.anAccount().build();
    }
%>
<body>
<section class="vh-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 text-black">

                <div class="px-5 ms-xl-4">
                    <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
                    <span class="h1 fw-bold mb-0">Register</span>
                </div>

                <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

                    <form style="width: 23rem;">

                        <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Register</h3>

                        <div class="form-outline mb-4">
                            <input type="email"  class="form-control form-control-lg" name="fullName"/>
                            <label class="form-label" >fullName</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email"  class="form-control form-control-lg" name="username"/>
                            <label class="form-label" >username</label>
                        </div>


                        <div class="form-outline mb-4">
                            <input type="password" class="form-control form-control-lg" name="email" />
                            <label class="form-label" >email</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email"  class="form-control form-control-lg" name="phoneNumber" />
                            <label class="form-label" >phoneNumber</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email"  class="form-control form-control-lg" name="password" />
                            <label class="form-label" >password</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email"  class="form-control form-control-lg" name="cpassword"/>
                            <label class="form-label" >Comfim password</label>
                        </div>

                        <div class="pt-1 mb-4">
                            <button class="btn btn-info btn-lg btn-block" type="button">Register</button>
                        </div>

                        <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                        <p>Don't have an account? <a href="#!" class="link-info">Register here</a></p>

                    </form>

                </div>

            </div>
            <div class="col-sm-6 px-0 d-none d-sm-block">

            </div>
        </div>
    </div>
</section>
</body>
</html>
