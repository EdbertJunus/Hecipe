<%@ include file="header.jsp" %>
<%
  if(userRole == null){
    response.sendRedirect("index.jsp");
  }
%>
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
        <%-- <%
          if(userRole != null && userRole.equals("Admin")){
        %>
          <th>Member</th>
        <%
          }
        %> --%>
        <th>Action</th>
      </tr>
      <%
        String query = "";

        if(userRole.equals("Admin")){
          query = "SELECT * FROM mstransaction";
        }else if(userRole.equals("Member")){
          query = String.format("SELECT * FROM mstransaction T JOIN mscart C ON T.TransactionId = C.TransactionId WHERE UserId = %d GROUP BY C.TransactionId;", userId);
        }
        ResultSet rs = con.executeQuery(query);
        while(rs.next()){
          %>
            <tr class="table-item">
              <td><%= rs.getString("TransactionDate")%></td>
              <td><%= rs.getString("TransactionStatus")%></td>
              <td><a href="transaction-detail.jsp?transactionId=<%= rs.getString("TransactionId")%>">See detail</a></td>
            </tr>
          <%
        }
      %>
      <!--Diganti dengan jsp include-->
    </table>
  </div>
</section>
<%@ include file="html/footer.html" %>
