package com.haovu.demoweb;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.haovu.business.User;
import com.haovu.data.UserIO;
import com.haovu.utils.CookieUtil;

import javax.servlet.annotation.*;

@WebServlet(name="DownloadServlet", value="/download")
public class DownloadServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }
        // perform action and set URL to appropriate page
        String url = "/downloadMusic/download.jsp";
        if (action.equals("showCookies")) {
            url = ShowCookie(request, response);
        }else
        if (action.equals("removeCookies")) {
            url = RemoveCookie(request, response);
        }else
        if (action.equals("viewAlbums")) {
            url = "/downloadMusic/download.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");

        // perform action and set URL to appropriate page
        String url = "/downloadMusic/download.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    private String checkUser (HttpServletRequest request,
                              HttpServletResponse response){

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtil.getCookieValue(cookies, "emailCookie");
            System.out.println("Email Coookie?: "+emailAddress);

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/register.jsp";
            }
            // if cookie exists,
            // create User object and go to Downloads page
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/downloadMusic/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/downloadMusic/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response){

        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        UserIO.add(user, path);
        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email to browser
        Cookie c = new Cookie("emailCookie", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c.setPath("/");              // allow entire app to access it
        response.addCookie(c);

        // create an return a URL for the appropriate Download page
        String productCode = (String)
                session.getAttribute("productCode");
        String url = "/downloadMusic/" + productCode + "_download.jsp";
        return url;
    }
    public String RemoveCookie(HttpServletRequest request,
                             HttpServletResponse response)
            throws IOException, ServletException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            System.out.println("name Cookies: "+cookie.getName() );
            System.out.println("value Cookies: "+cookie.getValue());
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url ="/cookie/delete_cookies.jsp";
        return url;
    }
    public String ShowCookie(HttpServletRequest request,
                               HttpServletResponse response)
            throws IOException, ServletException {
        /*Cookie[] cookies = request.getCookies();
        String cookieName = "userIdCookie";
        String cookieValue = "";
        for (Cookie cookie: cookies) {
            if (cookieName.equals(cookie.getName()))
                cookieValue = cookie.getValue();
            ServletContext session = new ServletContext().;
            session.setAttribute(cookie);
        }
*/
        String url ="/cookie/ShowCookie.jsp";
        return url;
    }
}

