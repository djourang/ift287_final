<%--
  Created by IntelliJ IDEA.
  User: Haran
  Date: 8/17/2024
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Gestion de l'Auberge</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<!-- Taskbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="home.jsp">
        <img src="home-icon.png" width="30" height="30" alt="Home">
    </a>
    <div class="collapse navbar-collapse justify-content-center">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="dashboard.jsp">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ajouterClient.jsp">Ajouter Client</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ajouterChambre.jsp">Ajouter Chambre</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ajouterCommodite.jsp">Ajouter Commodité</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="reserver.jsp">Réserver</a>
            </li>
            <!-- Add other significant buttons here -->
        </ul>
    </div>
    <a class="navbar-brand" href="logout.jsp">
        <img src="logout-icon.png" width="30" height="30" alt="Logout">
    </a>
</nav>

<!-- Main Content Area -->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='ajouterClient.jsp'">Ajouter Client</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='supprimerClient.jsp'">Supprimer Client</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='ajouterChambre.jsp'">Ajouter Chambre</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='supprimerChambre.jsp'">Supprimer Chambre</button>
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='ajouterCommodite.jsp'">Ajouter Commodité</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='inclureCommodite.jsp'">Inclure Commodité</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='enleverCommodite.jsp'">Enlever Commodité</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='reserver.jsp'">Réserver</button>
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='afficherChambre.jsp'">Afficher Chambre</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='afficherChambresLibres.jsp'">Afficher Chambres Libres</button>
            <button class="btn btn-primary btn-block mb-3" onclick="location.href='afficherClient.jsp'">Afficher Client</button>
            <button class="btn btn-danger btn-block mb-3" onclick="location.href='quitter.jsp'">Quitter</button>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

