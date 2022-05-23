<%@ include file="header.jsp" %>
<section class="content transaction transaction-detail">
  <span class="feature-title">
    <h2>Detail Transactions</h2>
    <hr />
  </span>
  <div class="table-wrapper">
    <table class="transaction-table">
      <tr>
        <th>Image</th>
        <th>Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Subtotal</th>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/Nasi-Goreng.jpg" alt="fried-rice" />
        </td>
        <td><a href="#LinkeMenu">Fried Rice</a></td>
        <td>2</td>
        <td>1000</td>
        <td>2000</td>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/nasi-kuning.jpg" alt="kuning-rice" />
        </td>
        <td><a href="#LinkeMenu">Yellow Rice</a></td>
        <td>2</td>
        <td>1000</td>
        <td>2000</td>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/nasi-kuning.jpg" alt="kuning-rice" />
        </td>
        <td><a href="#LinkeMenu">Yellow Rice</a></td>
        <td>2</td>
        <td>1000</td>
        <td>2000</td>
      </tr>
      <!--Diganti dengan jsp include-->
    </table>
    <div class="total-price">
      <p><b>Total:</b>*3200*</p>
      <button type="button" class="btn-prime btn-success">Process</button>
    </div>
  </div>
</section>
<%@ include file="html/footer.html" %>
