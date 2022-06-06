<%@ page import="java.util.*" %>
<%
    Cookie[] cookies = request.getCookies();
    String LoggedUserName=null;
    
    if(cookies != null){
        for(Cookie cookie : cookies){
            //out.println(cookie.getName() + " : " + cookie.getValue() + "<br>");

            if(cookie.getName().equals("hecipe_userName")){
                LoggedUserName = cookie.getValue();
            }

        }
    }
    if(LoggedUserName != null && session.getAttribute("userRole") == null){
        Connect con = Connect.getConnection();
        String query = String.format("SELECT * FROM msuser WHERE UserName='%s'", LoggedUserName);
        ResultSet rs = con.executeQuery(query);

        if(rs.next()){
            session.setAttribute("userRole", rs.getString("UserRole"));
            session.setAttribute("userName", rs.getString("UserName"));
        }
    }
        
%>