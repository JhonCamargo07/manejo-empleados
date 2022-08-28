/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package ModelDAO;

import ModelVO.TypeDocVO;
import ModelVO.*;
import java.util.List;

/**
 *Esta es la interfaz con los metodos genericos
 * @author Jhon Camargo
 * @version 1.0.0
 */
public interface IUserDAO {
    
    /**
     * Este metodo se encarga de consultar todos los usuarios de la bd y los devuelve en una lista
     * @return List<UserVO>, retorna una lista con los datos de la bd
     */
    public List<UserVO> select();
    
    /**
     * Este metodo es para hacer una insercion en la base de datos, en la tabla user
     * @param userVo, El objeto que tiene todos los datos del usuario
     * @param typeDoc, el objeto que tiene todos los datos del type doc
     * @return boolean, retorna si se pudo o no hacer la insercion
     */
    public boolean insert(UserVO userVo, TypeDocVO typeDoc);
    
    
    /**
     * Este metodo es para hacer una actualizacion en la bd
     * @param userVo, El objeto que tiene todos los datos del usuario
     * @param typeDoc, el objeto que tiene todos los datos del type doc
     * @return boolean, retorna si la actualizcion fue exitosa o no
     */
    public boolean update(UserVO userVo, TypeDocVO typeDoc);
    
}
