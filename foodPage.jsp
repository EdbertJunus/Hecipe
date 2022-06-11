<%@ include file="header.jsp" %>

<section class="content food-page">
    <!-- Food Detail Title -->
    <span class="feature-title">
        <h2>Foods</h2>
        <hr />
    </span>

    <!-- Guest -->
    <!-- Search Bar -->
    <div class="fp-search">
        <div class="fp-search-left">
            <form action="controller/searchFood.jsp">
                <!-- Search -->
                <input type="text" name="searchFood" id="" placeholder="Search food by">
    
                <!-- Select -->
                <select name="search-category" id="">
                    <option value="name">Name</option>
                    <option value="category">Category</option>
                    <option value="description">Description</option>
                </select>

                <button type="submit">Search</button>
            </form>
        </div>
        <div class="fp-search-right">
            <button><a href="add-food.jsp">Add new food</a></button>
        </div>
    </div>
    <div class="fp-content">
        <table class="fp-content-table">
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <!-- If guest hide action -->
                <th>Action</th>
            </tr>
            <tr class="fp-content-item">
                <td class="image-item">
                    <img src="assets/Nasi-Goreng.jpg" alt="fried-rice" />
                </td>
                <td><a href="#LinkeMenu">Fried Rice</a></td>
                <td>2</td>
                <td>1000</td>
                <td>2000</td>
            </tr>
            <tr class="fp-content-item">
                <td class="image-item">
                    <img src="assets/nasi-kuning.jpg" alt="kuning-rice" />
                </td>
                <td><a href="#LinkeMenu">Yellow Rice</a></td>
                <td>2</td>
                <td>1000</td>
                <td>2000</td>
            </tr>
        </table>
    </div>
    <div class="fp-page-nav">
        
    </div>

</section>

<%@ include file="html/footer.html" %>