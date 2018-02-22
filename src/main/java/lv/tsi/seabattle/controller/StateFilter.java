package lv.tsi.seabattle.controller;

import lv.tsi.javaweb.seabatle.model.Game;
import lv.tsi.javaweb.seabatle.model.PlayerGameContext;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "StateFilter", urlPatterns = "/*")
public class StateFilter implements Filter {

    @Inject
    private PlayerGameContext playerGameContext;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletResponse response = (HttpServletResponse) resp; // cast - konstrukcija cast perepisali peremenuju
        HttpServletRequest request = (HttpServletRequest) req;
        String path = request.getServletPath();

        // *.png, *.jsp, *.css and /register are always accessible
        if (path.endsWith(".png") || path.endsWith(".jsp") || path.endsWith(".css") || path.endsWith(".jpg")
                || path.endsWith("/register"))// i eto ne zapros na ...
                 {
            chain.doFilter(req, resp);
            return;
        }

        Game game = playerGameContext.getGame();

        if (game == null) {
            response.sendRedirect(request.getContextPath() + "/register");
        } else if (game.isCancelled()) {
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
