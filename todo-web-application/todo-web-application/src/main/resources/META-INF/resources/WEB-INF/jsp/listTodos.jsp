<%--jsp fregment--%>
<%@include file="comman/header.jspf" %>
<%@include file="comman/navigation.jspf" %>

<div class="container">
    <hr>
    <h1>Your Tasks are</h1>
    <table class="table">
        <thead>
        <tr>

            <th>Description</th>
            <th>Target Date</th>
            <th>Is Done?</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>

                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
                <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
                <td><a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="btn btn-success">Add Todo</a>
</div>
<%--jsp fregment--%>
<%@include file="comman/footer.jspf" %>