<%@ include file="header.jsp" %>

<section class="content add-food">
    <!-- Add Food Title -->
    <span class="feature-title">
        <h2>Add Food</h2>
        <hr />
      </span>
    
    <!-- Add Food -->
    <form action="controller/addfood-validation.jsp" method="post" name="addFoodForm">
        <div class="add-food-container">

            <!-- Food Name -->
            <div class="add-food-content">
                <label for="food-name" id="f-name">Name:</label>
                <input type="text" name="food-name" id="" placeholder="Name">
            </div>
            
            <!-- Food Category -->
            <div class="add-food-content">
                <label for="food-category" id="f-category">Category:</label>
                <select name="food-category" id="">
                    <option value="meats">Meats</option>
                    <option value="vegetarian">Vegetarian</option>
                    <option value="snack">Snack</option>
                </select>
            </div>

            <!-- Food Description -->
            <div class="add-food-content">
                <label for="food-description" id="f-description">Description: </label>
                <textarea name="food-description" id="" cols="30" rows="7"></textarea>
            </div>

            <!-- Food Price -->
            <div class="add-food-content">
                <label for="food-price" id="f-price">Price: </label>
                <input type="number" name="food-price" id="" min="0" placeholder="Price">
            </div>

            <!-- Food Quantity -->
            <div class="add-food-content">
                <label for="food-quantity" id="f-quantity">Quantity: </label>
                <input type="number" name="food-quantity" id="" min="0" placeholder="Quantity">
            </div>

            <!-- Button Register -->
            <div class="add-food-content">
                <button type="submit">Add Food</button>
            </div>
        </div>
    </form>
    <%
        if (request.getParameter("err") != null){
            out.println("<br><span style='color:red; font-size: 14px;'>" + request.getParameter("err") + "</span>");
        }
    %>

</section>

<%@ include file="html/footer.html" %>