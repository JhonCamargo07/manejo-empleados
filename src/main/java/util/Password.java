/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import org.springframework.security.crypto.bcrypt.BCrypt;

/**
 * Esta clase se encargara de realizar acciones con respecto a las contraseñas
 *
 * @author Jhon Camargo
 * @version 1.0.0
 */
public class Password {

    /**
     * Este metodo encripta las contraseñas, utilizando spring security
     *
     * @param passwordNotEncript, Password sin encriptar
     * @return String, devuelve la contraseña encriptada
     */
    public static String encript(String passwordNotEncript) {
        return BCrypt.hashpw(passwordNotEncript, BCrypt.gensalt());
    }

    /**
     * Este metodo verifica si una contraseña sin encriptar es la misma que una
     * contraseña encriptada, utilizando spring security
     *
     * @param passwordNotEncript, Password sin encriptar
     * @param passwordEncript, Password con encriptacion
     * @return boolean, retorna si una contraseña encriptada es igual a una que
     * no lo esta
     */
    public static boolean verifyPassword(String passwordNotEncript, String passwordEncript) {
        return BCrypt.checkpw(passwordNotEncript, passwordEncript);
    }
}
