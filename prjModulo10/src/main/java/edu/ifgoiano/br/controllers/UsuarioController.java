package edu.ifgoiano.br.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.ifgoiano.br.entidades.Usuario;
import edu.ifgoiano.br.negocio.UsuarioNegocio;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioNegocio negocio;
	
	@RequestMapping("erro")
	public String erro() {
		Integer erro = null;
		erro.toString();
		return "";
	}
	
	@GetMapping("login")
	public String loginGet() {
		return "login";
	}
	
	@PostMapping("login")
	public ModelAndView loginPost(@RequestParam String email, @RequestParam String senha) {
		ModelAndView model = new ModelAndView("login");
		boolean login = negocio.logar(email, senha);
		if(login) {
			model.addObject("mensagem", "Login realizado com sucesso!!");
			model.addObject("cor", "alert-success");
		}else{
			model.addObject("mensagem", "Login não realizado!! Email ou Senha não foram encontrados.");
			model.addObject("cor", "alert-danger");
		}
		return model;
	}
	
	@GetMapping("cadastro")
	public String cadastroGet() {
		return "cadastro";
	}
	
	@PostMapping("cadastro")
	public ModelAndView cadastroPost(Usuario usuario) {
		ModelAndView model = new ModelAndView("cadastro");
		boolean cadastro = negocio.cadastrar(usuario);
		if(cadastro) {
			model.addObject("mensagem", "Cadastro realizado com sucesso!!");
			model.addObject("cor", "alert-success");
		}else{
			model.addObject("mensagem", "Cadastro não realizado!!");
			model.addObject("cor", "alert-danger");
		}
		return model;
	}

	@RequestMapping("listar")
	public ModelAndView listar(){
		ModelAndView model = new ModelAndView("listar");
		List<Usuario> usuarios = negocio.listar();
		model.addObject("usuarios", usuarios);
		return model;
	}
	
	@GetMapping("deletar")
	public String deletar(@RequestParam String nome) {
		negocio.deletar(nome);
		return "forward:listar";
	}
	
	@GetMapping("atualizar")
	public ModelAndView atualizarGet(@RequestParam String nome) {
		ModelAndView model = new ModelAndView("atualizar");
		Usuario usuario = negocio.pegarUsuario(nome);
		model.addObject("usuario", usuario);
		return model;
	}
	
	@PostMapping("atualizar")
	public ModelAndView atualizarPost(Usuario usuario) {
		ModelAndView model = new ModelAndView("forward:listar");
		boolean alterar = negocio.alterar(usuario);
		if(alterar) {
			model.addObject("mensagem", "Cadastro realizado com sucesso!!");
			model.addObject("cor", "alert-success");
		}else{
			model.addObject("mensagem", "Cadastro não realizado!!");
			model.addObject("cor", "alert-danger");
		}
		return model;
	}
}
