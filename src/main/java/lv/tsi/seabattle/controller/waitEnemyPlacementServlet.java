package lv.tsi.seabattle.controller;

import lv.tsi.javaweb.seabatle.model.PlayerGameContext;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "waitEnemyPlacementServlet", urlPatterns ="waitEnemyPlacement")
public class waitEnemyPlacementServlet extends HttpServlet {
    @Inject
    private PlayerGameContext playerGameContext;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (playerGameContext.getGame().isReadyToPlay()) {
            response.sendRedirect("game");
        } else {
            request.getRequestDispatcher("/WEB-INF/waitEnemyPlacement.jsp")
                    .include(request, response);
        }
    }
}
