package com.haovu.demoweb;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

import com.haovu.dao.ProductDAO;
import com.haovu.dao.ProductIO;
import com.haovu.data.*;
import com.haovu.business.*;


@WebServlet(name = "CartServlet", value = "/cart")
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext sc = getServletContext();
        ProductDAO productDAO = new ProductDAO();
        HttpSession session = request.getSession();
        String url = "/ShowItem.jsp";

        ArrayList<Product> products = new ArrayList<Product>();
        System.out.println("Đã đi tới đây");
        products = productDAO.getAllProduct();
        for(Product p : products){
            System.out.println("P code:"+p.getCode());
            System.out.println("P price:"+p.getPrice());
        }


        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";  // default action
        }
        else{
            if (action.equals("cart")) {
                String productCode = request.getParameter("productCode");
                String quantityString = request.getParameter("quantity");
                /*System.out.println("productCode: "+ productCode+"---quan:"+quantityString);*/
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                }
                //if the user enters a negative or invalid quantity,
                //the quantity is automatically reset to 1.
                int quantity;
                try {
                    quantity = Integer.parseInt(quantityString);
                    if (quantity < 0) {
                        quantity = 1;
                    }
                } catch (NumberFormatException nfe) {
                    quantity = 1;
                }

                String path = sc.getRealPath("/WEB-INF/products.txt");
                productDAO = new ProductDAO();
                Product product = productDAO.getProduct(productCode);
                /*System.out.println("Product.code = "+product.getCode());*/
                LineItem lineItem = new LineItem();
                lineItem.setProduct(product);
                lineItem.setQuantity(quantity);
                if (quantity > 0) {
                    cart.addItem(lineItem);
                } else if (quantity == 0) {
                    cart.removeItem(lineItem);
                }
                session.setAttribute("cart", cart);
                url = "/cart.jsp";
            }
            else if (action.equals("checkout")) {
                url = "/checkout.jsp";
            }
        }
        session.setAttribute("Products", products);
        sc.getRequestDispatcher(url)
                .forward(request, response);

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println("DA vao doGet, action="+request.getParameter("action"));*/
        doPost(request, response);
    }
}

