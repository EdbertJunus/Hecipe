<%@ include file="header.jsp" %>
<section class="content transaction">
  <span class="feature-title">
    <h2>Transactions</h2>
    <hr />
  </span>
  <div class="table-wrapper">
    <table class="transaction-table">
      <tr>
        <th>Date</th>
        <th>Processed</th>
        <th>Action</th>
      </tr>
      <tr class="table-item">
        <td>2021-12-13</td>
        <td>true</td>
        <td><a href="#">See detail</a></td>
      </tr>
      <tr class="table-item">
        <td>2021-12-13</td>
        <td>false</td>
        <td><a href="#">See detail</a></td>
      </tr>
      <!--Diganti dengan jsp include-->
    </table>
  </div>
</section>
<%@ include file="html/footer.html" %>
