package edu.ifgoiano.br.repositorio;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.ifgoiano.br.entidades.Usuario;
import edu.ifgoiano.br.exception.DataBaseException;

@Repository
public class UsuarioRepositorio {

	@Autowired
	private BasicDataSource dataSource;

	public void inserir(Usuario usuario) throws DataBaseException {
		String sql = "INSERT INTO USUARIO (NOME, EMAIL, SENHA, DATA_CADASTRO) VALUES (?, ?, ?, ?)";
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){
			psmt.setString(1, usuario.getNome());
			psmt.setString(2, usuario.getEmail());
			psmt.setString(3, usuario.getSenha());
			psmt.setDate(4, Date.valueOf(usuario.getData()));
			psmt.execute();
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao inserir usuario no banco de dados.", e);
		}
	}

	public void atualizar(Usuario usuario) throws DataBaseException {
		String sql = "UPDATE USUARIO SET EMAIL = ?, SENHA = ? WHERE NOME = ?";
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){
			psmt.setString(1, usuario.getEmail());
			psmt.setString(2, usuario.getSenha());
			psmt.setString(3, usuario.getNome());
			psmt.execute();
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao atualizar usuario no banco de dados.", e);
		}
	}

	public void deletar(String nome) throws DataBaseException {
		String sql = "DELETE FROM USUARIO WHERE NOME = ?";
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){
			psmt.setString(1, nome);
			psmt.execute();
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao deletar usuario no banco de dados.", e);
		}
	}

	public Usuario pegarPorNome(String nome) throws DataBaseException {
		String sql = "SELECT * FROM USUARIO WHERE NOME = ?";
		Usuario usuario = null;
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){

			psmt.setString(1, nome);
			ResultSet result = psmt.executeQuery();
			while(result.next()) {
				usuario = new Usuario();
				usuario.setNome(result.getString("NOME"));
				usuario.setEmail(result.getString("EMAIL"));
				usuario.setSenha(result.getString("SENHA"));
				usuario.setData(result.getDate("DATA_CADASTRO").toLocalDate());
			}
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao pegar usuario no banco de dados.", e);
		}
		return usuario;
	}
	
	public Usuario pegarPorEmail(String email) throws DataBaseException {
		String sql = "SELECT * FROM USUARIO WHERE Email = ?";
		Usuario usuario = null;
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){

			psmt.setString(1, email);
			ResultSet result = psmt.executeQuery();
			while(result.next()) {
				usuario = new Usuario();
				usuario.setNome(result.getString("NOME"));
				usuario.setEmail(result.getString("EMAIL"));
				usuario.setSenha(result.getString("SENHA"));
				usuario.setData(result.getDate("DATA_CADASTRO").toLocalDate());
			}
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao pegar usuario no banco de dados.", e);
		}
		return usuario;
	}
	
	public Usuario pegarUsuario(String email, String senha) throws DataBaseException {
		String sql = "SELECT * FROM USUARIO WHERE EMAIL = ? AND SENHA = ?";
		Usuario usuario = null;
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){
			
			psmt.setString(1, email);
			psmt.setString(2, senha);
			ResultSet result = psmt.executeQuery();
			while(result.next()) {
				usuario = new Usuario();
				usuario.setNome(result.getString("NOME"));
				usuario.setEmail(result.getString("EMAIL"));
				usuario.setSenha(result.getString("SENHA"));
				usuario.setData(result.getDate("DATA_CADASTRO").toLocalDate());
			}
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao pegar usuario no banco de dados.", e);
		}
		return usuario;
	}

	public List<Usuario> pegarTodos() throws DataBaseException{
		String sql = "SELECT * FROM USUARIO";
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		try (Connection conn = dataSource.getConnection();
			PreparedStatement psmt = conn.prepareStatement(sql);){
			
			ResultSet result = psmt.executeQuery();
			while(result.next()) {
				Usuario usuario = new Usuario();
				usuario.setNome(result.getString("NOME"));
				usuario.setEmail(result.getString("EMAIL"));
				usuario.setSenha(result.getString("SENHA"));
				usuario.setData(result.getDate("DATA_CADASTRO").toLocalDate());
				usuarios.add(usuario);
			}
		} catch (SQLException e) {
			throw new DataBaseException("Erro ao listar usuarios no banco de dados.", e);
		}
		return usuarios;
	}
}
