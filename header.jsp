<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hecipe</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/transaction-style.css" />
    <link rel="stylesheet" href="css/cart-style.css" />
  </head>
  <body>
    <header>
      <nav>
        <a class="nav-logo" href="#">
          <img src="assets/Logo.png" alt="logo"/>
        </a>
        <ul>
          <li class="nav-item"><a href="#home">Home</a></li>
          <li class="nav-item"><a href="#foods">Foods</a></li>
        </ul>
      </nav>
      <div class="nav-auth">
        <!--Dynamic Change-->
        <ul>
        <%-- 1. Guest Auth --%>
          <%-- <li class="nav-item"><a href="#login">Login</a></li>
          <li class="nav-item"><a href="#register">Register</a></li> --%>
        
        <%-- 2. Admin Auth --%>
          <li class="nav-item-welcome">Welcome, *Admin/Nesnah*</li>
          <li class="nav-item"><a href="#profile">Profile</a></li>
          <li class="nav-item"><a href="#cart">View Cart</a></li>
          <li class="nav-item"><a href="#transaction">View Transaction</a></li>
          <li class="nav-item"><a href="#logout">Logout</a></li>

        </ul>
      </div>
    </header>

