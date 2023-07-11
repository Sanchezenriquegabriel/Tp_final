package com.example.tpfinal;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "login", value = "/login")

public class loginController extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String user_mail = request.getParameter("email");
        String user_pwd = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher disp = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "Gaby1948");
            final String QUERY = "select * from usuarios where usuario = ? and contrasenia = ? ";
            PreparedStatement ps = con.prepareStatement(QUERY);
            ps.setString(1, user_mail);
            ps.setString(2, user_pwd);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("email", rs.getString("usuario"));
                session.setAttribute("nombre", rs.getString("nombre"));
                request.setAttribute("status", "success");
                disp = request.getRequestDispatcher("index.jsp");
            } else {
                request.setAttribute("status", "failed");
                disp = request.getRequestDispatcher("login.jsp");
            }
            disp.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
