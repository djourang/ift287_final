<%--
  Created by IntelliJ IDEA.
  User: Haran
  Date: 8/16/2024
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil - Système de Gestion de l'Auberge</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/logoTabBord.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Bienvenue au Système de Gestion de l'Auberge</h1>
    <div class="col-md-6 offset-md-3 mt-5">
        <h3 class="text-center">Veuillez choisir votre type de connexion :</h3>
        <div class="d-flex justify-content-around mt-4">
            <!-- Formulaire pour la connexion employé -->
            <form method="POST">
                <input class="btn btn-primary btn-lg" type="submit" value="Connexion Employé" onclick="form.action='transaction?action=Login';">
            </form>
            <!-- Formulaire pour la connexion client -->
            <form method="POST">
                <input class="btn btn-success btn-lg" type="submit" value="Connexion Client" onclick="form.action='transaction?action=TableauDeBordClient';">
            </form>
        </div>
    </div>
</div>

<!-- Inclusion des fichiers JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
