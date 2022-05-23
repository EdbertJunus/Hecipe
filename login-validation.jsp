<%

    // Get Values
    String email = request.getParameter("email");
    String pwd = request.getParameter("password");
    String [] rmb_me = request.getParameterValues("remember-me");

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
    // Check if password in database

    else if(rmb_me != null){
        // Add Cookie to store username that will last for 24 hours
    }
%>