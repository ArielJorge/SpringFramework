package edu.ifgoiano.br.negocio;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.ifgoiano.br.entidades.Usuario;
import edu.ifgoiano.br.repositorio.UsuarioRepositorio;

@Component
public class UsuarioNegocio {

	@Autowired
	public UsuarioRepositorio repositorio;
	
	//metodo que verifica se a senha tem uma quantidade de caracteres igual ou superior a 6
	public Boolean verificarSenha(String senha){
		if(senha.length() >= 6) {
			return Boolean.TRUE;
		}else {
			return Boolean.FALSE;
		}
	}
	
	//metodo que verifica a existencia do EMAIL no banco de dados, retorna VERDADEIRO caso nao exista
	public Boolean verificarEmail(String email) {
		Usuario usuario = repositorio.pegarPorEmail(email);
		
		if(usuario == null) {
			return Boolean.TRUE;
		}else {		
			return Boolean.FALSE;
		}
	}
	
	//metodo que verifica a existencia do NOME no banco de dados, retorna VERDADEIRO caso nao exista
	public Boolean verificarNome(String nome) {
		Usuario usuario = repositorio.pegarPorNome(nome);
		
		if(usuario == null) {
			return Boolean.TRUE;
		}else {
			return Boolean.FALSE;
		}
	}
	
	/** metodos para LOGIN/CADASTRO **/
	/*
	 * -> RETORNA VERDADEIRO PARA CASO O USUARIO ESTIVER NO BANCO DE DADOS
	 */
	public Boolean verificarUsuario(String email, String senha){
		Usuario usuario = repositorio.pegarUsuario(email, senha);
		
		if(usuario != null) {
			return Boolean.TRUE;
		}else {
			return Boolean.FALSE;
		}
	}
	
	/*
	 * -> VERIFICA SE EMAIL E NOME EXISTEM NO BANCO DE DADOS;
	 */
	public Boolean verificarUsuario(Usuario usuario) {
		usuario.setData(LocalDate.now());
		
		boolean nome = this.verificarNome(usuario.getNome());
		boolean email = this.verificarEmail(usuario.getEmail());
		boolean senha = this.verificarSenha(usuario.getSenha());
		
		if(senha) {
			if(email && nome) {
				if(usuario.getNome() != null || !usuario.getNome().isEmpty()) {
					return Boolean.TRUE;
				}else {
					return Boolean.FALSE;
				}
			}else {
				return Boolean.FALSE;
			}
		}else {
			return Boolean.FALSE;
		}
	}
	
	public Boolean verificarAlterar(Usuario usuario) {
		boolean email = this.verificarEmail(usuario.getEmail());
		boolean senha = this.verificarSenha(usuario.getSenha());
		
		if(senha) {
			if(email) {
				return Boolean.TRUE;
			}else {
				return Boolean.FALSE;
			}
		}else {
			return Boolean.FALSE;
		}
	}
	
	
	public Boolean logar(String email, String senha) {
		return this.verificarUsuario(email, senha);
	}
	
	public Boolean cadastrar(Usuario usuario) {
		boolean cadastro = this.verificarUsuario(usuario);
		if(cadastro) {
			repositorio.inserir(usuario);
		}
		return cadastro;
	}
	
	public Boolean alterar(Usuario usuario) {
		boolean alterar = this.verificarAlterar(usuario);
		if(alterar) {			
			repositorio.atualizar(usuario);
		}
		return alterar;
	}
	
	public List<Usuario> listar() {
		return repositorio.pegarTodos();
	}
	
	public void deletar(String nome) {
		repositorio.deletar(nome);
	}
	
	public Usuario pegarUsuario(String nome) {
		Usuario usuario = repositorio.pegarPorNome(nome);
		return usuario;
	}
}
