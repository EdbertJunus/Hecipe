<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>

<%
    Cookie[] cookies = request.getCookies();
    String LoggedUserName=null;
    
    if(cookies != null){
        for(Cookie cookie : cookies){

            if(cookie.getName().equals("hecipe_userName")){
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                
            }

        }
    }
    session.removeAttribute("userRole");
    session.removeAttribute("userName");

    response.sendRedirect("index.jsp");

%>