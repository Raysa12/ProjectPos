package com.pos.projectpos.servlets;

import com.pos.projectpos.common.ProductDto;
import com.pos.projectpos.ejb.ProductBean;
import com.pos.projectpos.ejb.UserBean;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@ServletSecurity(value = @HttpConstraint(rolesAllowed = {"READ_PRODUCTS"}))
@WebServlet(name = "DeleteFromCart", value = "/DeleteFromCart")
public class DeleteFromCart extends HttpServlet {

    @Inject
    ProductBean productsBean;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<ProductDto> productList = null;
        if (request.getParameter("prod_id") != null) {
            Long id = Long.parseLong(request.getParameter("prod_id"));
            if (session.getAttribute("cartList") != null) {
                productList = (List<ProductDto>) session.getAttribute("cartList");
            }
            productList.remove(productsBean.findById(id));
            session.setAttribute("cartList", productList);
            request.setAttribute("products", productList);

            response.sendRedirect(request.getContextPath()+"/Cart");
        }
    }

}

