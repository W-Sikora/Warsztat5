<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spis książek</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>

<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <img src="static/img/book.png" height="42" width="80" vspace="5">
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="#newBookSection">
                Add book
            </a>

            <a class="navbar-item" href="#listOfBookSection">
                List of books
            </a>

        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <a href="https://github.com/Wojtek120">
                    <img src="static/img/GitHub.png">
                </a>
            </div>
        </div>
    </div>
</nav>


<!------------ADD NEW BOOK FORM-------------->
<section class="hero has-background-primary" id="newBookSection">
    <div class="hero-body">
        <div class="container">
            <h1 class="title has-text-white">
                Formularz dodawania
            </h1>
            <h2 class="subtitle has-text-white">
                Dodaj nową książkę
            </h2>
        </div>
    </div>
</section>

<section class="has-background-light">
    <br>
    <div class="columns is-mobile is-centered" id="addNewBookContainer">
        <div class="tile is-parent is-6">
            <div class="tile is-child box">


                <div class="field">
                    <label class="label">Tytuł</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Tytuł">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Autor</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Autor">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Typ książki</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Typ książki">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Wydawnictwo</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="Wydawnictwo">
                    </div>
                </div>
                <div class="field">
                    <label class="label">ISBN</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="ISBN">
                    </div>
                </div>

                <div class="control">
                    <button class="button is-rounded is-link">Dodaj</button>
                </div>
            </div>
        </div>
    </div>
    <br>
</section>


<!------------LIST OF BOOKS-------------->

<section class="hero has-background-primary" id="listOfBookSection">
    <div class="hero-body">
        <div class="container">
            <h1 class="title has-text-white">
                Lista wszystkich książek
            </h1>
            <h2 class="subtitle has-text-white">
                Kliknij w szczegóły aby dowiedzieć się więcej
            </h2>
        </div>
    </div>
</section>


<section class="has-background-light">
    <br>
    <div class="container " id="allBooks">
    </div>
</section>


<!------------FOOTER-------------->
<section class="has-background-dark" style="padding-top:30px">
    <a href="https://bulma.io">
        <div class="columns is-mobile is-centered">
            <img src="static/img/made-with-bulma.png" alt="Made with Bulma" width="128" height="24" vspace="5">
        </div>
    </a>
</section>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
<script src="static/js/app.js"></script>
</body>
</html>