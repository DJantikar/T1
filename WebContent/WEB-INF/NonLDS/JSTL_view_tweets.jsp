<%@page import="java.util.ArrayList" %>
<%@page import="com.twitter.Tweet" %>
<html xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Salesforce Lightning Design System View Tweets Module</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="styles/salesforce-lightning-design-system-vf.min.css"  type="text/css">
</head>
<body>
<% response.setIntHeader("Refresh", 30);%>
<!-- REQUIRED SLDS WRAPPER -->
 <div class="TDJ">
 <!-- MASTHEAD -->
    <p class="slds-text-heading--label slds-m-bottom--medium">
      	Salesforce Lightning Design System View Tweets Module
    </p>
  <!-- / MASTHEAD -->
 <!-- PAGE HEADER -->
	<div class="slds-page-header" role="banner">
		<div class="slds-grid">
			<div class="slds-col slds-has-flexi-truncate">
			
			    <!-- FORM -->
			    <form action="FilterTweet" method="GET" class="slds-form--stacked">
			      <!-- BOXED AREA -->
			      <fieldset class="slds-box slds-theme--default slds-container--small">			
			        <div class="slds-form-element">
			          	<div class="slds-form-element__control">
           				 <input class="slds-input" type="text" name="inputFilter" placeholder="Search in current tweets .."/>
          				</div>
			        </div>
			        <button class="slds-button slds-button--brand slds-m-top--medium" type="submit">Search</button>
			      </fieldset>
			      <!-- / BOXED AREA -->
			    </form>
			    <!-- FORM -->
			
			</div>
		 	 <!-- 
		    <div class="slds-col slds-no-flex slds-grid slds-align-top">
		      <button class="slds-button slds-button--neutral">Home</button>
		    </div>
		     --> 
	  </div>
	  
	</div>
	<!-- / PAGE HEADER -->
 
 </div>
 <div class="myapp">
 	<div class="slds-p-vertical--medium"></div>
	<table class="slds-table slds-table--bordered slds-table--cell-buffer slds-no-row-hover">
	
	  <tbody>
	  	<tr>
			<h2> Latest 10 tweets ..</h2>
		</tr>
		<% ArrayList<Tweet> tl = (ArrayList<Tweet>)  request.getSession().getAttribute("tweet_list");
       	   for (Tweet t : tl) { %>
			<tr>
				<th scope="row"><img src=<%=t.getProfileImage()%>/></th>
				<td><%=t.getUserName() %></td>
				<td><%=t.getScreenName() %></td>		
				<td><%=t.getTweetContent() %></td>
				<td><%=t.getRetweetCount() %></td>
				<td><%=t.getTweetDate() %></td>
			</tr>
		<%};%>
	  </tbody>
	</table>
 </div>
</body>
</html>