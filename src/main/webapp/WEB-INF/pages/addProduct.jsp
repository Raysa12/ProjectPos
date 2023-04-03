<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/7/2023
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageFormular pageTitle="AddProduct">
    <div class="div_titlu">
        <p class="titlu-produs">Add Product</p>
    </div>

    <div class="form-container">
    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddProduct">

        <div class="input-div pass">
            <div class="div1">
                <input type="text" class="form-control" id="Name" name="Name" placeholder="Product name" value="" required>
                <div class="invalid-feedback">
                    Name is required
                </div>
            </div>
        </div>
        <div class="input-div pass">
            <div class="div1">
                <input type="text" class="form-control" id="Category" name="Category" placeholder="Category" value="" required>
                <div class="invalid-feedback">
                    Category is required
                </div>
            </div>
        </div>

        <div class="input-div pass">
            <div class="div1">
                <input type="text" class="form-control" id="Price" name="Price" placeholder="Price" value="" required>
                <div class="invalid-feedback">
                    Price is required
                </div>
            </div>
        </div>

        <div class="input-div pass">
            <div class="div1">
                <input type="text" class="form-control" id="Quantity" name="Quantity" placeholder="Quantity" value="" required>
                <div class="invalid-feedback">
                    Quantity is required
                </div>
            </div>
        </div>
        <input class="login-button" type="submit" value="Submit">
    </form>
    </div>
</t:pageFormular>
