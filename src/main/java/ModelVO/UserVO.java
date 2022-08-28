/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelVO;

/**
 * Esta clase es una clase de dominio, se manejan los datos de los usuarios
 * @author Jhon Camargo
 * @version 1.0.0
 */
public class UserVO {
    private int idUser;
    private String nameUser;
    private String lastNameUser;
    private String typeDocUser;
    private String numDocUser;
    private String telUser;
    private String emailUser;
    private String passwordUser;
    private String estadoUser;
    private String changePasswordUser;
    private String rolUser;

    public UserVO() {
    }

    public UserVO(String emailUser, String passwordUser) {
        this.emailUser = emailUser;
        this.passwordUser = passwordUser;
    }

    public UserVO(String nameUser, String lastNameUser, String typeDocUser, String numDocUser, String telUser, String emailUser, String passwordUser, String estadoUser, String rolUser) {
        this.nameUser = nameUser;
        this.lastNameUser = lastNameUser;
        this.typeDocUser = typeDocUser;
        this.numDocUser = numDocUser;
        this.telUser = telUser;
        this.emailUser = emailUser;
        this.passwordUser = passwordUser;
        this.estadoUser = estadoUser;
        this.rolUser = rolUser;
    }

    public UserVO(int id_user, String nameUser, String lastNameUser, String typeDocUser, String numDocUser, String telUser, String emailUser, String passwordUser, String estadoUser, String changePasswordUser, String rolUser) {
        this.idUser = id_user;
        this.nameUser = nameUser;
        this.lastNameUser = lastNameUser;
        this.typeDocUser = typeDocUser;
        this.numDocUser = numDocUser;
        this.telUser = telUser;
        this.emailUser = emailUser;
        this.passwordUser = passwordUser;
        this.estadoUser = estadoUser;
        this.changePasswordUser = changePasswordUser;
        this.rolUser = rolUser;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public String getLastNameUser() {
        return lastNameUser;
    }

    public void setLastNameUser(String lastNameUser) {
        this.lastNameUser = lastNameUser;
    }

    public String getTypeDocUser() {
        return typeDocUser;
    }

    public void setTypeDocUser(String typeDocUser) {
        this.typeDocUser = typeDocUser;
    }

    public String getNumDocUser() {
        return numDocUser;
    }

    public void setNumDocUser(String numDocUser) {
        this.numDocUser = numDocUser;
    }

    public String getTelUser() {
        return telUser;
    }

    public void setTelUser(String telUser) {
        this.telUser = telUser;
    }

    public String getEmailUser() {
        return emailUser;
    }

    public void setEmailUser(String emailUser) {
        this.emailUser = emailUser;
    }

    public String getPasswordUser() {
        return passwordUser;
    }

    public void setPasswordUser(String passwordUser) {
        this.passwordUser = passwordUser;
    }

    public String getEstadoUser() {
        return estadoUser;
    }

    public void setEstadoUser(String estadoUser) {
        this.estadoUser = estadoUser;
    }

    public String getChangePasswordUser() {
        return changePasswordUser;
    }

    public void setChangePasswordUser(String changePasswordUser) {
        this.changePasswordUser = changePasswordUser;
    }

    public String getRolUser() {
        return rolUser;
    }

    public void setRolUser(String rolUser) {
        this.rolUser = rolUser;
    }

    @Override
    public String toString() {
        return "UserVO{" + "id_user=" + idUser + ", nameUser=" + nameUser + ", lastNameUser=" + lastNameUser + ", typeDocUser=" + typeDocUser + ", numDocUser=" + numDocUser + ", telUser=" + telUser + ", emailUser=" + emailUser + ", passwordUser=" + passwordUser + ", estadoUser=" + estadoUser + ", changePasswordUser=" + changePasswordUser + ", rolUser=" + rolUser + '}';
    }
    
}
