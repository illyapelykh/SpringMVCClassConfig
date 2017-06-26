<%@include file="templates/header.jsp" %>

<form action="/updatePost" method="post">
    <input type="hidden" name="id" value="${emptyPost.id}">
    <input type="text" name="postTitle" value="${emptyPost.postTitle}">
    <input type="text" name="postText" value="${emptyPost.postText}">


    <select name="blogID" id="">
        <c:forEach items="${blogs}" var="blog">
            <c:if test="${blog.id == emptyPost.blog.id}">
                <option value="${blog.id}">${blog.blogTitle}</option>
            </c:if>
            <c:if test="${blog.id != emptyPost.blog.id}">
                <option value="${blog.id}">${blog.blogTitle}</option>
            </c:if>

        </c:forEach>
    </select>
    <input type="submit" value="updatePost">

</form>



</body>
</html>
