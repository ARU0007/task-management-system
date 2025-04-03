<%@include file="comman/header.jspf"%>
<%@include file="comman/navigation.jspf"%>

<div class="container d-flex flex-column align-items-center justify-content-start mt-3">
    <!-- Moved heading outside the content-box -->
    <h1 class="fw-bold mb-4 text-warning text-center">
        Welcome to Your Productivity Hub &#x2B50;
    </h1>

    <div class="text-center p-5 rounded shadow-lg content-box">
        <p class="lead text-light">
            Stay focused, stay organized, and achieve your goals effortlessly! &#x1F680;
        </p>

        <hr class="w-50 mx-auto my-3 border-light">

        <div class="fs-4 text-white">
            Your Name: <span class="fw-bold">${name}</span>
        </div>

        <p class="mt-3 text-light">
            "Success is the sum of small efforts, repeated day in and day out." &ndash; Robert Collier
        </p>

        <a href="list-todos" class="btn btn-warning mt-4 px-4 py-2 fw-bold">
            Manage Your Tasks
        </a>

        <div class="mt-4">
            <p class="text-white fst-italic">"Turn your ideas into action. Start organizing today!"</p>
        </div>
    </div>
</div>

<%@include file="comman/footer.jspf"%>

<style>
    .mb-3 {
        margin-bottom: 5rem !important;
    }
    /* Background Styling */
    body {
        background: linear-gradient(135deg, #4b6cb7, #182848);
        color: #333;
    }

    /* Styling for the heading outside the box */
    h1 {
        font-size: 2.5rem;
        font-weight: bold;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    }

    /* Inner Section Styling */
    .content-box {
        background: linear-gradient(135deg, #4b6cb7, #182848); /* Dark blue gradient */
        color: white;
        max-width: 600px;
        border-radius: 15px;
    }

    /* Smooth fade-in effect */
    .container div {
        animation: fadeIn 0.8s ease-in-out;
    }

    /* Animation */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
