<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/17/2023
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Products">
  <div class="div_titlu">
    <p class="titlu-produs">Products</p>
  </div>
  <form method="POST" action="${pageContext.request.contextPath}/Products">
    <c:if test="${pageContext.request.isUserInRole('WRITE_PRODUCTS')}">
      <div class="action_button">
        <button class="add"><a href="${pageContext.request.contextPath}/AddProduct">Add Product</a></button>
        <button class="delete_product" type="submit">Delete Product</button>
      </div>
    </c:if>
    <div class="container-fluid cards">
      <c:forEach var="product" items="${products}">
        <div class="card">
          <img class="card__image" src="${pageContext.request.contextPath}/ProductPhotos?id=${product.id}" alt="photo">
          <div class="card__content">
            <p class="product-name">${product.name}</p>
            <p class="product-price">${product.price}&nbsp;lei</p>
            <p class="product-left"> ${product.quantity}&nbsp;left</p>
            <button class="product-button"> <a href="${pageContext.request.contextPath}/AddToCart?id=${product.id}">ADD TO CART</a></button>
            <c:if test="${pageContext.request.isUserInRole('WRITE_PRODUCTS')}">
              <div>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/AddProductPhoto?id=${product.id}" role="button">Add photo</a>
                <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditProduct?id=${product.id}">Edit Product</a>
                <input type="checkbox" name="product_ids" value="${product.id}"/>
              </div>
            </c:if>
          </div>
        </div>
      </c:forEach>
    </div>
  </form>
</t:pageTemplate>
