<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<title>Filtered Tweets</title>
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
		Tweets containing : <%= request.getParameter("inputFilter") %>
	</tr>
	<c:forEach var="tempTweet" items="${filtered_tweet_list}">
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