<%@ include file="header.jsp" %>
<section class="content transaction cart">
  <span class="feature-title">
    <h2>Cart</h2>
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
        <th>Action</th>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/Nasi-Goreng.jpg" alt="fried-rice" />
        </td>
        <td><a href="#LinkeMenu">Fried Rice</a></td>
        <input type="hidden" name="foodId" value="foodId" />
        <td>
          <div class="quantity-input">
            <input type="number" value="2" />
            <input
              class="btn-prime btn-warning save-btn"
              type="submit"
              value="Save"
            />
          </div>
        </td>
        <td>1000</td>
        <td class="item-subtotal">2000</td>
        <td><button class="btn-prime">Delete</button></td>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/nasi-kuning.jpg" alt="kuning-rice" />
        </td>
        <td><a href="#LinkeMenu">Yellow Rice</a></td>
        <td>
          <div class="quantity-input">
            <input type="number" value="2" />
            <input
              class="btn-prime btn-warning save-btn"
              type="submit"
              value="Save"
            />
          </div>
        </td>
        <td>1000</td>
        <td class="item-subtotal">2000</td>
        <td><button class="btn-prime">Delete</button></td>
      </tr>
      <tr class="table-item">
        <td class="image-item">
          <img src="assets/nasi-kuning.jpg" alt="kuning-rice" />
        </td>
        <td><a href="#LinkeMenu">Yellow Rice</a></td>
        <td>
          <div class="quantity-input">
            <input type="number" value="1" />
            <input
              class="btn-prime btn-warning save-btn"
              type="submit"
              value="Save"
            />
          </div>
        </td>
        <td>1000</td>
        <td class="item-subtotal">2000</td>
        <td><button class="btn-prime">Delete</button></td>
      </tr>
      <!--Diganti dengan jsp include-->
    </table>
    <div class="total-price">
      <span>
        <b>Total:</b>
        <p id="total-price-text">*3200*</p>
      </span>
      <div class="btn-wrapper">
        <button type="button" class="btn-prime">Empty cart</button>
        <button type="button" class="btn-prime btn-success">Check out</button>
      </div>
    </div>
  </div>
</section>
<%@ include file="html/footer.html" %>
