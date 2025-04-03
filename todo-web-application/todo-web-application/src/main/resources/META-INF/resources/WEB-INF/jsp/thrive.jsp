<%@include file="comman/header.jspf"%>
<%@include file="comman/navigation.jspf"%>

<div class="container my-5">
    <h2 class="text-center text-warning mb-4">&#x2728;
        Thrive Motivation Quotes &#x2728;
    </h2>

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card shadow-lg border-0 quote-card">
                <div class="card-body text-center">
                    <blockquote class="blockquote">
                        <p class="mb-2 text-light">"Success is not final, failure is not fatal: it is the courage to continue that counts."</p>
                        <footer class="blockquote-footer text-warning">Winston Churchill</footer>
                    </blockquote>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-4">
            <div class="card shadow-lg border-0 quote-card">
                <div class="card-body text-center">
                    <blockquote class="blockquote">
                        <p class="mb-2 text-light">"Opportunities don't happen. You create them and triumph over them."

                        </p>
                        <footer class="blockquote-footer text-warning">Chris Grosser</footer>
                    </blockquote>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-4">
            <div class="card shadow-lg border-0 quote-card">
                <div class="card-body text-center">
                    <blockquote class="blockquote">
                        <p class="mb-2 text-light">"Believe you can, and you are halfway there."</p>
                        <footer class="blockquote-footer text-warning">Theodore Roosevelt</footer>
                    </blockquote>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-4">
            <div class="card shadow-lg border-0 quote-card">
                <div class="card-body text-center">
                    <blockquote class="blockquote">
                        <p class="mb-2 text-light">"The only way to do great work is to love what you do."</p>
                        <footer class="blockquote-footer text-warning">Steve Jobs</footer>
                    </blockquote>
                </div>
            </div>
        </div>

        <div class="col-md-12 mb-4">
            <div class="card shadow-lg border-0 quote-card">
                <div class="card-body text-center">
                    <blockquote class="blockquote">
                        <p class="mb-2 text-light">"Hardships often prepare ordinary people for an extraordinary destiny."</p>
                        <footer class="blockquote-footer text-warning">C.S. Lewis</footer>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="comman/footer.jspf"%>

<style>
    /* Background color to match previous page */
    body {
        background: linear-gradient(135deg, #4b6cb7, #182848);
        color: white;
    }

    /* Card styling */
    .quote-card {
        background: rgba(255, 255, 255, 0.1); /* Semi-transparent white */
        border-left: 5px solid #FFC107; /* Golden-yellow border */
        transition: transform 0.2s ease-in-out;
        backdrop-filter: blur(10px);
    }

    .quote-card:hover {
        transform: scale(1.03);
    }

    /* Title Styling */
    h2 {
        font-weight: bold;
    }

    /* Author name styling */
    .blockquote-footer {
        font-style: italic;
    }
</style>
