<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<title>Hello tokens</title>
</head>
<body>

Token : <%= request.getAttribute("token") %>
<br>
Token Secret: <%= request.getAttribute("tokenSecret") %>
</table>
</body>
</html>