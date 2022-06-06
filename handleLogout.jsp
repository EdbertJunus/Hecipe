<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>

<%
    session.removeAttribute("userRole");
    session.removeAttribute("userName");

    response.sendRedirect("index.jsp");

%>