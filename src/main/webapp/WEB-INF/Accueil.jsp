<%--
  Created by IntelliJ IDEA.
  User: Haran
  Date: 8/16/2024
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="auberServlet.AubergeHelper, AubergeInn.gestionnaires.GestionObergeInn, AubergeInn.tuples.Client, AubergeInn.tuples.Reservation" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>IFT287 - Système de gestion d'une auberge</title>
    <meta name="author" content="Vincent Ducharme">
    <meta name="description"
          content="Page d'accueil du système de gestion de l'auberge.">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/navigation.jsp" />
    <h1 class="text-center">Système de gestion de l'auberge</h1>

    <%
        // Vérifiez si l'utilisateur peut accéder à la page
        if (!AubergeHelper.peutProceder(request.getServletContext(), request, response)) {
            return;
        }

        // Récupérer le gestionnaire pour les opérations de consultation
        GestionObergeInn aubergeInterrogation = AubergeHelper.getaubergeInterro(session);

        // Vérifier si l'utilisateur est un administrateur
        boolean isAdmin = session.getAttribute("admin") != null;

        List<Reservation> reservations = null;
        List<Client> clients = null;

        if (isAdmin) {
            // Si l'utilisateur est un administrateur, récupérer la liste des clients avec des réservations
            clients = aubergeInterrogation.getGestionClient().getListeClientsAvecReservations();
        } else {
            // Si l'utilisateur est un client, récupérer ses réservations personnelles
            String userId = (String) session.getAttribute("userID");
            reservations = aubergeInterrogation.getGestionReservation().listerReservationsClient(Integer.parseInt(userId));
        }
    %>

    <% if (isAdmin) { %>
    <h3 class="text-center">Réservations en cours</h3>
    <h3 class="text-center">Réservations en cours</h3>
    <div class="col-8 offset-2">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Client</th>
                <th scope="col">Chambre</th>
                <th scope="col">Date d'arrivée</th>
                <th scope="col">Date de départ</th>
            </tr>
            </thead>
            <tbody>
            <%
                // Parcourir tous les clients
                for (Client client : clients) {
                    // Récupérer les réservations du client
                    List<Reservation> reservationsClient = aubergeInterrogation.getGestionReservation().listerReservationsClient(client.getidClient());
                    for (Reservation reservation : reservationsClient) {
            %>
            <tr>
                <td><%= client.getM_nom() %></td>
                <td><%= reservation.getM_chambre().getidChambre() %></td>
                <td><%= reservation.getdateDebut() %></td>
                <td><%= reservation.getdateFin() %></td>
            </tr>
            <%
                    } // fin de la boucle des réservations
                } // fin de la boucle des clients
            %>
            </tbody>
        </table>
    </div>

    <% } else { %>
    <h3 class="text-center">Mes réservations</h3>
    <div class="col-8 offset-2">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">reservatoin du client</th>
                <th scope="col">Chambre</th>
                <th scope="col">Date d'arrivée</th>
                <th scope="col">Date de départ</th>
            </tr>
            </thead>
            <tbody>
            <% for (Reservation r : reservations) { %>
            <tr>
                <td><%= r.getM_client().getM_nom() %></td>
                <td><%= r.getM_chambre() %></td>
                <td><%= r.getdateDebut().toString() %></td>
                <td><%= r.getdateFin().toString() %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
    <% } %>

    <br>
    <jsp:include page="/WEB-INF/messageErreur.jsp" />
    <br>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>
