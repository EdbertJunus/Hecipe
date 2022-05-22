<%@ include file="jsp/header.jsp" %>
<section class="content home">
  <div class="welcome-content">
    <h1>Welcome to Hecipe!</h1>
    <p class="welcome-slang">The place to satisfy all your's belly needs</p>
    <hr />
    <p class="description-text">
      Trying to fill your's belly? You come to the right place! With many foods
      to choose from, you can satisfy yourself in whatever the way you want. And
      so without holding yourself back, why not see what we have to over by
      clicking this button?
    </p>
    <button type="button" class="btn-prime">See our's catalog</button>
  </div>
  <div class="feature-content">
    <div class="purchase-food feature-item">
      <span class="feature-title">
        <h2>Purchase Foods</h2>
        <hr />
      </span>
      <p class="description-text">
        Hecipe is the place where you can go to if you want to find a wide
        variety of cuisine around the world. And so, now is the time if you want
        to fill your belly with the greatest cuisine from around the world.
      </p>
      <button class="btn-prime">See what's we have to offer</button>
    </div>
    <div class="search-foods feature-item">
      <span class="feature-title">
        <h2>Search Foods</h2>
        <hr />
      </span>
      <p class="description-text">
        Want to search a specific food in mind? Try using our search engine to
        find the cuisine that can fill your belly with our greatest cuisine from
        around the world.
      </p>
      <div class="search-engine">
        <input
          type="search"
          name="search-foods"
          id="searchFoods"
          placeholder="Search food by"
        />
        <select name="search-by" id="search-by">
          <option value="name">Name</option>
          <option value="category">Category</option>
          <option value="description">Description</option>
        </select>
        <input type="submit" value="Search" class="btn-prime" />
      </div>
    </div>
    <div class="site-status feature-item">
      <span class="feature-title">
        <h2>Site Status</h2>
        <hr />
      </span>
      <span class="site-status-item">
        <p class="description-text">Current Date:</p>
        <p class="description-text">*2021-12-13*</p>
      </span>
      <span class="site-status-item">
        <p class="description-text">Number of user:</p>
        <p class="description-text">*3 person*</p>
      </span>
      <span class="site-status-item">
        <p class="description-text">Logged user:</p>
        <p class="description-text">*0 person*</p>
      </span>
    </div>
  </div>
</section>
<%@ include file="html/footer.html" %>
