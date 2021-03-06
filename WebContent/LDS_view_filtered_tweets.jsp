<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<%@page import="com.twitter.Tweet" %>
<html xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Salesforce Lightning Design System View Filtered Tweets Module</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="styles/salesforce-lightning-design-system-vf.min.css"  type="text/css">
    <style>
table {
    border-collapse: collapse;
    width: 100%;
}

td {
    text-align: left;
    padding: 20px;
    vertical-align: bottom;
}
tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    padding: 20px;
    text-align: center;
}
table, td, th {    
    border: 1px solid #ddd;
}
</style>
</head>
<body>
<% response.setIntHeader("Refresh", 30);%>
<!-- REQUIRED SLDS WRAPPER -->
 <div class="TDJ">
	 <!-- MASTHEAD -->
	    <p class="slds-text-heading--label slds-m-bottom--medium">
	      	Salesforce Lightning Design System View Filtered Tweets Module
	    </p>
	  <!-- / MASTHEAD -->
  	<br>
  	<% ArrayList<Tweet> tl = (ArrayList<Tweet>)  request.getSession().getAttribute("filtered_tweet_list");%>
	<div class="slds-page-header" role="banner">
		<div class="slds-grid">
			<div class="slds-col slds-size--3-of-6">
				<%if(tl.isEmpty()){ %>
				<b>Sorry ! No tweets with string '</b>
				<%} 
				else{%>
				<b>Tweets with string '</b>
				<%} %>
				 <b><%=request.getParameter("inputFilter") %>' </b>
			</div>	 	
	    	<div align="right" class="slds-col slds-size--3-of-6">
	    		<form action="AppTweetServlet" method="GET">
	    			<button type="submit">Home</button>						
				</form>			
	    	</div>		    
		</div>
	</div>
	<%if(!tl.isEmpty()){ %>
	<div>
		<table>
		  <tbody>
			<tr>
					<th>Profile</th>
					<th> UserName </th>
					<th> ScreenName </th>
					<th> Tweet </th>
					<th> Retweeted </th>
					<th> Date </th>
			</tr>
			<%
		       for (Tweet t : tl) {
			%>                    
				<tr>
					<td><img src=<%=t.getProfileImage()%>/></td>
					<td><%=t.getUserName() %></td>
					<td><%=t.getScreenName() %></td>
					<td><%=t.getTweetContent() %></td>
					<td><%=t.getRetweetCount() %></td>
					<td><%=t.getTweetDate() %></td>
				</tr>
			<%}%>
		  </tbody>
		</table>
	</div>
	<%} %>
</div>
</body>
</html>