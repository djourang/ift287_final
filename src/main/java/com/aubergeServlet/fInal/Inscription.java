package auberServlet;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


public class Inscription extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Servlet Inscription : POST");
        if (!AubergeHelper.peutProcederLogin(getServletContext(), request, response)) {
            // Le dispatch vers le login se fait dans AubergeHelper.peutProceder
            return;
        }

        System.out.println("Servlet Inscription : POST dispatch vers creerCompte.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/creerCompte.jsp");
        dispatcher.forward(request, response);
    }

    // Dans les formulaires, on utilise la méthode POST
    // donc, si le servlet est appelé avec la méthode GET
    // s'est qu'on a écrit l'adresse directement dans la barre d'adresse.
    // On procède si on est connecté correctement, sinon, on retourne au login
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Servlet Inscription : GET");
        // Si on a déjà entré les informations de connexion valide

        if (AubergeHelper.peutProceder(getServletContext(), request, response)) {
            System.out.println("Servlet Inscription : GET dispatch vers creerCompte.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/creerCompte.jsp");
            dispatcher.forward(request, response);
        }
    }
}

