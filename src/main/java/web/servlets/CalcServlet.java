package web.servlets;

import com.google.gson.Gson;
import models.Operation;
import services.OperationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {

    private final OperationService operationService = new OperationService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final double num1 = Double.parseDouble(req.getParameter("num1"));
        final double num2 = Double.parseDouble(req.getParameter("num2"));
        String type = req.getParameter("type");

        Operation operation = new Operation(num1, num2, type);

        Operation execute = operationService.execute(operation);

        String resultStr = "Result = %s".formatted(execute.getResult());

        resp.getWriter().println(resultStr);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson = new Gson();
        // TODO: в JSON получаю num-string, нужно преобразовать типы? Почему работает и так?
        Operation operation = gson.fromJson(req.getReader(), Operation.class);

        Operation execute = operationService.execute(operation);

        String jsonResponse = gson.toJson(execute);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        resp.getWriter().write(jsonResponse);
    }
}
