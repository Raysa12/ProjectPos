<%--
  Created by IntelliJ IDEA.
  User: Raysa
  Date: 1/6/2023
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
  <div>
      <nav class="header">
        <div class="div_logo">
            <img class="logo" src="${pageContext.request.contextPath}/img/logo.png" alt="logo">
        </div>
          <div class="nav_links">
              <ul>
                  <li>
                  <li>
                      <a ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf("/")) eq '/about.jsp' ? ' active' : ''}
                              aria-current="page" href="${pageContext.request.contextPath}/about.jsp">About</a>
                  </li>
                      <c:if test="${pageContext.request.isUserInRole('READ_PRODUCTS')}">
                          <a ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf ("/")) eq '/products.jsp' ? ' active' : ''}
                                  aria-current="page" href="${pageContext.request.contextPath}/Products">Products</a>
                      </c:if>
                  </li>
                  <li>
                        <c:if test="${pageContext.request.isUserInRole('READ_USERS')}">
                          <a  ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf ("/")) eq '/users.jsp' ? ' active' : ''}
                                  aria-current="page" href="${pageContext.request.contextPath}/Users">Users</a>
                        </c:if>
                  </li>
              </ul>
          </div>
        <div class="div_button">
            <c:if test="${pageContext.request.isUserInRole('READ_PRODUCTS')}">
                <a  ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf ("/")) eq '/cart.jsp' ? ' active' : ''}
                        aria-current="page" href="${pageContext.request.contextPath}/Cart"><i class='fa fa-shopping-cart red-color cart'></i></a>
            </c:if>
            <c:choose>
                <c:when test="${pageContext.request.getRemoteUser() == null}">
                    <a href="${pageContext.request.contextPath}/Login"><button class="button-nav">Login</button></a>
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/Logout"><button class="button-nav">Logout</button></a>
                </c:otherwise>
            </c:choose>
        </div>
    </nav>
  </div>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap');

    li, a{
      font-family:"Monserrat",sans-serif;
      font-weight: 600;
      font-size:25px;
      color:white;
      text-decoration: none;
    }
    .header{
      display:flex;
      justify-content:space-between;
      align-items: center;
      padding:20px 2%;
      background: linear-gradient(180deg, #001242 50%, #00376A 107.24%);
    }
    .div_logo{
        padding-left: 80px;
    }
    .div_button{
        padding-right: 80px;
    }
    .logo{
      cursor:pointer;
      width: 120px;
    }
    .nav_links{
      list-style: none;
    }
    .nav_links li{
      display:inline-block;
      padding:0px 50px;
    }
    .nav_links li a:hover{
      color:#61B2FE;
    }
    .button-nav{
      padding:5px 25px;
      background: linear-gradient(136.53deg, #61B2FE 31.28%, #0069CC 67.28%, rgba(0, 118, 230, 0.81) 67.29%);
      border-radius:15px;
      cursor: pointer;
      color:white;
      font-weight: 600;
        border:none;
    }
    .button-nav:hover{
      background: white;
      color: #61B2FE;
    }
    .cart{
        padding-right: 20px;
    }
  </style>
</header>

