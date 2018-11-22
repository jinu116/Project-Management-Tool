<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
session.setAttribute("user",null);
response.sendRedirect("../index.jsp");
%>