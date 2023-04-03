<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageLogin pageTitle="Login">
    <c:if test="${message != null}">
        <div class="alert alert-warning" role="alert">
                ${message}
        </div>
    </c:if>
    <div class="container">

        <div class="img">
            <img src="${pageContext.request.contextPath}/img/cashier-img.png" alt="cashier">
        </div>

        <div class="login-content">

            <form class="form-signin" method="POST" action="j_security_check">
                <img src="${pageContext.request.contextPath}/img/avatar" alt="avatar">
                <h2 class="title">Welcome</h2>
                <div class="input-div one">
                    <div class="icon">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required />
                    </div>
                </div>
                <input class="login-button" type="submit">
            </form>
        </div>
    </div>


</t:pageLogin>