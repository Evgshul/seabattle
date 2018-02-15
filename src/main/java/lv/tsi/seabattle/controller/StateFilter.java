package lv.tsi.seabattle.controller;

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
        if (playerGameContext.getGame() == null && !(
                path.equals("/register")
                        || path.endsWith(".png")
                        || path.endsWith(".jsp")
                        || path.endsWith(".css") // i eto ne zapros na ...
        )) {
            response.sendRedirect(request.getContextPath() + "register");// pereadresacija na register
        } else if (playerGameContext.getGame() != null
                && playerGameContext.getGame().isCancelled()) {

            request.getSession().invalidate();// nasiljno zavershaem svoju sesiju
            response.sendRedirect(request.getContextPath() + "/index.jsp");

        } else {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
