<%@ include file="header.jsp" %>

<section class="content food-detail">
    <!-- Food Detail Title -->
    <span class="feature-title">
    <!-- Food name from request.getparam -->
        <h2>Food Name Placeholder</h2>
        <hr />
    </span>

    <!-- Guest -->
    <!-- Food Detail -->
    <div class="fd-content">
        <!-- Data dummy, nanti dari db-->
        <img src="assets/nasi-kuning.jpg" alt="Nasi Goreng">
        <div class="fd-description">
            <!-- Category -->
            <h4>Category</h4>
            <p>Dummy Category</p>

            <!-- Description -->
            <h4>Description</h4>
            <p>Dummy Description</p>

            <!-- Price -->
            <h4>Price</h4>
            <p>Dummy Price</p>

            <!-- Quantity -->
            <h4>Quantity</h4>
            <p>Dummy Quantity</p>
        </div>
    </div>

    <!-- Comments -->
    <span id="fd-comment-title">
        <h3>Comments</h3>
        <hr>
    </span>

    <!-- Guest Comments -->
    <div class="fd-comments">
        <h4>Dummy Name</h4>
        <p>Dummy Comments</p>

        <h4>Dummy Name 2</h4>
        <p>Dummy Comments 2</p>
    </div>
</section>

<%@ include file="html/footer.html" %>