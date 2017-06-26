<%--
  Created by IntelliJ IDEA.
  User: Illko
  Date: 12.06.2017
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@include file="templates/header.jsp" %>

<form action="/admin/saveBlog" method="post" enctype="multipart/form-data">
    <input type="text" name="blogTitle" value="Title">
    <input type="text" name="blogDescription" value="Description">
    <input type="file" name="picture">
    <input type="submit" value="save blog">
</form>

<sf:form action="/admin/savePost" method="post" modelAttribute="emptyPost">
    <sf:input path="id" type="hidden"/>
    <sf:input path="postTitle"/>
    <sf:errors path="postTitle"/>
    <sf:input path="postText"/>
    <sf:select path="blog">
        <c:forEach items="${blogs}" var="blog">
            <sf:option value="${blog.id}">${blog.blogTitle}</sf:option>
        </c:forEach>
    </sf:select>

    <input type="submit" value="save post">
</sf:form>

</body>
</html>
