<%@include file="comman/header.jspf"%>

<%--jsp fragment--%>
<%@include file="comman/navigation.jspf"%>

<div class="container content-box mt-5 p-4 rounded shadow-lg customized-color">
    <h1 class="text-center text-primary">Enter Todo Details </h1>
    <form:form method="post" modelAttribute="todo">
        <fieldset class="mb-3">
            <form:label path="description" class="fw-bold">Description</form:label>
            <form:input type="text" path="description" class="form-control" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>
        <fieldset class="mb-3">
            <form:label path="targetDate" class="fw-bold">Target Date</form:label>
            <form:input type="text" path="targetDate" class="form-control" required="required"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>
            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
            <div class="text-center">
                <input type="submit" class="btn btn-success px-4 py-2 fw-bold" value="Save Todo">
            </div>
    </form:form>
</div></>

<%@include file="comman/footer.jspf"%>

<script type="text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd'
    });

    // Smoothly fade in the page when fully loaded
    window.onload = function() {
        document.body.classList.add('loaded');
    };
</script>

<style>
    .customized-color{
        background: linear-gradient(135deg, #74ebd5, #acb6e5);
    }
    /* Initial background before the page fully loads */
    body {
        background-color: #182848; /* Dark blue before load */
        color: #333;
        transition: background-color 1s ease-in-out;
    }

    /* Once the page loads, it switches to a smooth gradient */
    body.loaded {
       // background: linear-gradient(135deg, #74ebd5, #acb6e5); /* Light pastel gradient */
        background: linear-gradient(135deg, #4b6cb7, #182848);
    }

    /* Container Styling */
    .content-box {
        background: #ffffff;
        max-width: 600px;
        border-left: 5px solid #007bff;
    }

    /* Form input styling */
    .form-control {
        border: 1px solid #007bff;
    }
</style>
