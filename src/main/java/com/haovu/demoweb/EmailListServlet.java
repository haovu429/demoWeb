package com.haovu.demoweb;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

import com.haovu.business.User;
import com.haovu.data.UserDB;

/*@WebServlet(urlPatterns={"/emailList"},
        initParams={@InitParam(name="relativePathToFile",
                value="/WEB-INF/EmailList.txt")})*/

public class EmailListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println("DA vao doGet, action="+request.getParameter("action"));*/
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*System.out.println("DA vao doPost, action="+request.getParameter("action"));*/
        String url = "/join_email/join_email.jsp";
        //Lấy hành động hiện tại
        String action = request.getParameter("action");
        if (action == null){
            action = "join"; //Đặt hành động mặc định là "join"
        }

        //Thực thi hành động và đặt URl tới trang tiếp cận.
        if (action.equals("join")){
            url = "/join_email/join_email.jsp"; // Trang join
        }
        else if (action.equals("add")){
            // Lấy các parameter từ request
            String fistName = request.getParameter("fistName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            //Lưu dữ liệu trong đối tượng User và lưu đối tượng vào DB
            User user = new User(fistName,lastName,email);


            //Validate the parameter
            String message;
            if(UserDB.emailExists(user.getEmail())) {
                message = "This email address already exists.<br>" +
                        "Please enter another email address.";
                url = "/join_email/join_email.jsp";

            }else
            if(fistName == null || lastName == null || email==null ||
            fistName.isEmpty() || lastName.isEmpty() || email.isEmpty()){

                message = "Please fill out all three text boxes.";
                url = "/join_email/join_email.jsp";
            }else{
                message = "";
                url = "/join_email/thanks.jsp";
                UserDB.insert(user);
            }

            //Đặt đối tượng user vào request và đặt URL
            request.setAttribute("user", user);
            request.setAttribute("message", message);
            request.setAttribute("crushImage", getInitParameter("crushImage"));

        }
        //Chuyển đối tượng request và response tới đường dẫn đặc biệt
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
    }
}
