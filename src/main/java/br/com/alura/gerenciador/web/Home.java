package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Home implements Tarefa {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {

		HttpSession session = req.getSession();

		return "index.jsp";

	}

}
