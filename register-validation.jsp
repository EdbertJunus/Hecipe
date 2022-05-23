<%

    // Get Values
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String pwd = request.getParameter("password");
    String pwd_confirm = request.getParameter("confirm-password");

    String ALPHABET_REGEX = "^[a-zA-Z]+$";
    String NUMBER_REGEX = "^[0-9]+$";

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

    // Validate Name
    if(name == ""){
        response.sendRedirect("register.jsp?err=Name Cannot be Empty!");
    }
    else if(name.length() < 3){
        response.sendRedirect("register.jsp?err=Name must be at least 3 characters!");
    }

    // Validate Email
    
    else if(email == ""){
        response.sendRedirect("register.jsp?err=Email Cannot be Empty!");
    }
    else if(countAt == 0 || isEmailContainDot == false){
        response.sendRedirect("register.jsp?err=Email must contain both '@' and '.'");
    }
    else if(countAt > 1){
        response.sendRedirect("register.jsp?err=Email can only contain one '@'");
    }
    else if(isSymbolCorrect == false){
        response.sendRedirect("register.jsp?err=Email cannot have '@' and '.' side by side");
    }
    // Check if email is in database (Must be unique)

    // Validate Password
    else if(pwd == ""){
        response.sendRedirect("register.jsp?err=Password Cannot be Empty!");
    }
    else if(pwd.length() < 6){
        response.sendRedirect("register.jsp?err=Password must be at least 6 characters!");
    }
    else if(pwd.matches(ALPHABET_REGEX) || pwd.matches(NUMBER_REGEX)){
        response.sendRedirect("register.jsp?err=Password must contain both alphabet and number!");
    }
    else if(!pwd_confirm.equals(pwd)){
        response.sendRedirect("register.jsp?err=Confirm password does not match password!");
    }

    // Register ke db
%>