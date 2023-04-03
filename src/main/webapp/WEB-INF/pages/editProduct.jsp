<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/17/2023
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageFormular pageTitle="EditProduct">
  <div class="div_titlu">
    <p class="titlu-produs">Edit Product</p>
  </div>

  <div class="form-container">
    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/EditProduct">

      <div class="input-div pass">
        <div class="div1">
          <input type="text" class="form-control" id="NAME" name="NAME" placeholder="Name" value="${product.name}" required>
          <div class="invalid-feedback">
            Name is required
          </div>
        </div>
      </div>

      <div class="input-div pass">
        <div class="div1">
          <input type="text" class="form-control" id="CATEGORY" name="CATEGORY" placeholder="Category" value="${product.category}" required>
          <div class="invalid-feedback">
            Category is required
          </div>
        </div>
      </div>

      <div class="input-div pass">
        <div class="div1">
          <input type="text" class="form-control" id="PRICE" name="PRICE" placeholder="Price" value="${product.price}" required>
          <div class="invalid-feedback">
            Price is required
          </div>
        </div>
      </div>

      <div class="input-div pass">
        <div class="div1">
          <input type="text" class="form-control" id="QUANTITY" name="QUANTITY" placeholder="Quantity" value="${product.quantity}" required>
          <div class="invalid-feedback">
            Quantity is required
          </div>
        </div>
      </div>

      <input  type="hidden" name="product_id" value="${product.id}" />
      <input  class="login-button" type="submit" value="Submit">
    </form>
  </div>

</t:pageFormular>




