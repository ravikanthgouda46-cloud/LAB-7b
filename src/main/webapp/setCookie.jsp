<%@ page import="javax.servlet.http.Cookie" %>
<html>
<head>
    <title>Cookie Added</title>
</head>
<body>

<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    int maxAge = Integer.parseInt(request.getParameter("cage"));

    // Create cookie
    Cookie cookie = new Cookie(name, "SampleValue");

    // Set domain and expiry
    cookie.setDomain(domain);
    cookie.setMaxAge(maxAge);

    // Add cookie to response
    response.addCookie(cookie);
%>

<h2>Cookie Added Successfully!</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= maxAge %> seconds</p>

<br>
<a href="listCookies.jsp">Go to Active Cookie List</a>

</body>
</html>