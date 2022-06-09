<%@ page import="java.util.*" %>
<%@ include file="databases/connect.jsp" %>
<%

    // Get Values
    String email = request.getParameter("email");
    String pwd = request.getParameter("password");
    String [] rmb_me = request.getParameterValues("remember-me");

    Connect con = Connect.getConnection();
    String query;
    ResultSet rs;

    // Validate Email
    // Validate @ and .
    boolean isEmailContainDot = false;
    int countAt = 0;
    boolean isSymbolCorrect = true;
    for (int i = 0 ; i < email.length() ; i++){
        if(email.charAt(i) == '@'){
            countAt++;
            if(i != email.length() - 1 && (email.charAt(i - 1) == '.' || email.charAt(i + 1) == '.')){
                isSymbolCorrect = false;
            }
        }
        else if(email.charAt(i) == '.'){
            isEmailContainDot = true;
        }
    }

    if (email == ""){
        response.sendRedirect("login.jsp?err=Email Cannot be Empty!");
    }
    else if(countAt == 0 || isEmailContainDot == false){
        response.sendRedirect("login.jsp?err=Email must contain both '@' and '.'");
    }
    else if(countAt > 1){
        response.sendRedirect("login.jsp?err=Email can only contain one '@'");
    }
    else if(isSymbolCorrect == false){
        response.sendRedirect("login.jsp?err=Email cannot have '@' and '.' side by side");
    }
    // Check if email is in database

    // Validate Password
    else if (pwd == ""){
        response.sendRedirect("login.jsp?err=Password Cannot be Empty!");
    }
    else{
        // Check if password in database
        query = String.format("SELECT * FROM msuser WHERE UserEmail='%s'", email);
        rs = con.executeQuery(query);

        if(!rs.next()){
            response.sendRedirect("login.jsp?err=Email is not registered");
        }else if(!pwd.equals(rs.getString("UserPassword"))){
            response.sendRedirect("login.jsp?err=Password input is wrong");

        }else{
            String userName = rs.getString("UserName");
            if(rmb_me != null){
                // Add Cookie to store username that will last for 24 hours
                
                Cookie user_cookie = new Cookie("hecipe_userName", userName);
                user_cookie.setMaxAge(24 * 60 * 60);
                response.addCookie(user_cookie);
                
            }

            session.setAttribute("userRole", rs.getString("UserRole"));
            session.setAttribute("userName", userName);

            // Add to db lalu redirect ke homepage
            //Harusnya ini add userStatus Log In atau gak ke db
            
            response.sendRedirect("index.jsp");
        }
        
        


    }
    
%>