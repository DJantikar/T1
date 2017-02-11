<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<title>Tweets</title>
</head>
<body>
<% response.setIntHeader("Refresh", 30);%>
<form action="FilterTweet" method="GET">
			Search in current tweet :<input type="text" name="inputFilter"/> 
			<input type="submit" value="Submit"/>
			</form>
<table>
	<!--  
	<tr>
		<th>userName</th>
		<th>screenName</th>
		<th>profileImage</th>
		<th>tweetContent</th>
		<th>retweetCount</th>
		<th>tweetDate</th>
	</tr>
	-->
	
	<tr>
		<b> Latest 10 tweets ..</b>
	</tr>
	<c:forEach var="tempTweet" items="${tweet_list}">
	<tr>
		<td><img src='${tempTweet.profileImage}'/></td>
		<td>${tempTweet.userName}</td>
		<td>${tempTweet.screenName}</td>		
		<td>${tempTweet.tweetContent}</td>
		<td>${tempTweet.retweetCount}</td>
		<td>${tempTweet.tweetDate}</td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>