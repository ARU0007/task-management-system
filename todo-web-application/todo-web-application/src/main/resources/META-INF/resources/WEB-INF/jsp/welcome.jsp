<%@include file="comman/header.jspf"%>
<%@include file="comman/navigation.jspf"%>

<%--Expression Language ${name}  --%>
<div class="container"><h1>Welcome to my application</h1>
<div>Your Name: ${name}</div>
<div>Your Name: ${password}</div>
<div><a href="list-todos">Manage</a></div>
</div>
<%@include file="comman/footer.jspf"%>