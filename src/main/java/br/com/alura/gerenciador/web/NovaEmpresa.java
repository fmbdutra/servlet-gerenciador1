package br.com.alura.gerenciador.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.Empresa;
import br.com.alura.gerenciador.dao.EmpresaDAO;

public class NovaEmpresa implements Tarefa {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {

		String nome = req.getParameter("nome");
		
		Empresa empresa = new Empresa(nome);
		new EmpresaDAO().adiciona(empresa);
		
		req.setAttribute("nome", nome);
		
		return "/WEB-INF/paginas/novaEmpresa.jsp";

	}
}
