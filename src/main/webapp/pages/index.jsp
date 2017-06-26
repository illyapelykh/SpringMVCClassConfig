<%@include file="templates/header.jsp" %>

<sec:authorize access="isAuthenticated()">
    <h1>hello! ${xxx}</h1>
</sec:authorize>
<hr>


<hr>

<a href="/showAllBlogs">
    <button>showAllBlogs</button>
</a>

<hr>
<a href="/admin/toAdminPage">to AdminPage</a>

<form action="/saveUser" method="post">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"
    >
    <input type="submit" name="save user">

</form>

</body>
</html>
