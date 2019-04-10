package com.codve;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "indexServlet",
        urlPatterns = "/index"
)
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String view = "hello";
        request.getRequestDispatcher("/WEB-INF/jsp/view/" + view + ".jsp")
                .forward(request, response);
    }
}
