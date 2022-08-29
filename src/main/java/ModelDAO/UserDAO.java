/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDAO;

import ModelVO.TypeDocVO;
import ModelVO.UserVO;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Password;

/**
 * Esta clase se encargara de realizar las funciones con la bd
 *
 * @author Jhon Camargo
 * @version 1.0.0
 */
public class UserDAO extends Conexion implements IUserDAO {

    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private String sql = "";
    private boolean operacionSuccesfull = false;

    /**
     * Este metodo nos servira para iniciar sesion
     * @param email, el email del usuario
     * @param password, la contraseña del usuario
     * @return UserVO, retorna los datos del usuario, si es que esta en la bd
     */
    public UserVO login(String email, String password) {
        UserVO userVo = null;
        sql = "SELECT * FROM user WHERE BINARY email_user = ?";
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            rs = stmt.executeQuery();

            if (rs.next()) {
                if(Password.verifyPassword(password, rs.getString("password_user"))){
                    userVo = new UserVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
                }
            }
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al seleccionar los users: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return userVo;
    }
    
    /**
     * Este metodo es para saber si un email ya se encuentra en la bd, ya que el email en la bd debe ser unico
     * @param email, email con el que se planean registrar
     * @return boolean, retorna si esta o no el email en la bd
     */
    public boolean isEmailBD(String email) {
        boolean existeEmailInBD = false;
        sql = "SELECT * FROM user WHERE BINARY email_user = ?";
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            rs = stmt.executeQuery();

            if (rs.next()) {
                existeEmailInBD = true;
            }
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al seleccionar los users: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return existeEmailInBD;
    }
    
    /**
     * Este metodo es para saber si un numero de documento ya se encuentra en la bd, ya que el numero de doc en la bd debe ser unico
     * @param numDoc, numero de documento con el que se planea registrar
     * @return boolean, retorna si esta o no el num doc en la bd
     */
    public boolean isNumDocBD(String numDoc) {
        boolean existeNumDocInBD = false;
        sql = "SELECT * FROM user WHERE BINARY num_doc_user = ?";
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, numDoc);
            rs = stmt.executeQuery();

            if (rs.next()) {
                existeNumDocInBD = true;
            }
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al seleccionar los users: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return existeNumDocInBD;
    }

    @Override
    public List<UserVO> select() {
        List<UserVO> users = new ArrayList<>();
        UserVO userVo = null;
        sql = "SELECT * FROM user";
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                userVo = new UserVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
                users.add(userVo);
            }
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al seleccionar los users: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return users;
    }

    @Override
    public boolean insert(UserVO userVo, TypeDocVO typeDoc) {
        userVo.setPasswordUser(Password.encript(userVo.getPasswordUser()));
        sql = "INSERT INTO user VALUES (null,?,?,?,?,?,?,?,?,?,?)";
        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, userVo.getNameUser());
            stmt.setString(2, userVo.getLastNameUser());
            stmt.setString(3, userVo.getTypeDocUser());
            stmt.setString(4, userVo.getNumDocUser());
            stmt.setString(5, userVo.getTelUser());
            stmt.setString(6, userVo.getEmailUser());
            stmt.setString(7, userVo.getPasswordUser());
            stmt.setString(8, userVo.getEstadoUser());
            stmt.setString(9, userVo.getChangePasswordUser());
            stmt.setString(10, userVo.getRolUser());
            stmt.executeUpdate();
            operacionSuccesfull = true;

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al insertar el user: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return operacionSuccesfull;
    }

    @Override
    public boolean update(UserVO userVo, TypeDocVO typeDoc) {
        sql = "UPDATE user SET name_user=?,last_name_user=?,type_doc=?,num_doc_user=?,tel_user=?,email_user=?,password_user=?,estado=?,change_password_user=?,rol_user=? WHERE id_user = ?";
        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, userVo.getNameUser());
            stmt.setString(2, userVo.getLastNameUser());
            stmt.setString(3, userVo.getTypeDocUser());
            stmt.setString(4, userVo.getNumDocUser());
            stmt.setString(5, userVo.getTelUser());
            stmt.setString(6, userVo.getEmailUser());
            stmt.setString(7, userVo.getPasswordUser());
            stmt.setString(8, userVo.getEstadoUser());
            stmt.setString(9, userVo.getChangePasswordUser());
            stmt.setString(10, userVo.getRolUser());
            stmt.setInt(11, userVo.getIdUser());
            stmt.executeUpdate();
            operacionSuccesfull = true;

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al actualizar el user: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return operacionSuccesfull;
    }

}
