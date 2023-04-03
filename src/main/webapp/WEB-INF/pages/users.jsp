<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/17/2023
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <div class="div_titlu">
        <p class="titlu-produs">Users</p>
    </div>

    <form method="POST" action="${pageContext.request.contextPath}/Users">
        <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
            <button class="add"><a href="${pageContext.request.contextPath}/AddUser">Add User</a></button>
        </c:if>
         <div class="container text-center div_table">
                <table  class="table table-striped font">
                    <thead>
                    <tr>
                        <td>Email</td>
                        <td>Username</td>
                        <td>Type</td>
                    </tr>
                    </thead>
                    <c:forEach var="user" items="${user}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                        <td>${user.type}</td>
                    </tr>
                    </c:forEach>
                </table>

        </div>
    </form>


</t:pageTemplate>
