<%-- 
    Document   : class
    Created on : Feb 24, 2016, 11:40:32 AM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Library</title>
    </head>
    <body>
        <%! Connection cn;Statement st;ResultSet rs;%>
            <%
            String lname=request.getParameter("a");
            String dob=request.getParameter("b");
            int ano=Integer.parseInt(request.getParameter("g"));
            String add=request.getParameter("d");
            int tp=Integer.parseInt(request.getParameter("e"));
            String em=request.getParameter("f");
            String bt=request.getParameter("b1");
            
                        try{
	Class.forName("com.mysql.jdbc.Driver");
               String dburl="jdbc:mysql://localhost/Project";
	cn=DriverManager.getConnection(dburl,"root" ,"");
 	st=cn.createStatement();

                  
              st.executeUpdate("insert into library(FullName,DateofBirth,AdmissionNumber,Address,TelephoneNumber,Email) values('"+lname+"','"+dob+"','"+ano+"','"+add+"','"+tp+"','"+em+"')");
                        }
                        catch(Exception e)
                        {System.out.println(e.getMessage());}
      %>
    </body>
</html>
