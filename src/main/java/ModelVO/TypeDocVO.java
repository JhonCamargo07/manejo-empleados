/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelVO;

/**
 *Esta clase es de dominio, se manejan los datos de el tipo de documento
 * @author Jhon Camargo
 * @version 1.0.0
 */
public class TypeDocVO {
    private int idTypeDOc;
    private String nameTypeDoc;

    public TypeDocVO() {
    }

    public TypeDocVO(String nameTypeDoc) {
        this.nameTypeDoc = nameTypeDoc;
    }

    public TypeDocVO(int idTypeDOc, String nameTypeDoc) {
        this.idTypeDOc = idTypeDOc;
        this.nameTypeDoc = nameTypeDoc;
    }

    public int getIdTypeDOc() {
        return idTypeDOc;
    }

    public void setIdTypeDOc(int idTypeDOc) {
        this.idTypeDOc = idTypeDOc;
    }

    public String getNameTypeDoc() {
        return nameTypeDoc;
    }

    public void setNameTypeDoc(String nameTypeDoc) {
        this.nameTypeDoc = nameTypeDoc;
    }

    @Override
    public String toString() {
        return "TypeDoc{" + "idTypeDOc=" + idTypeDOc + ", nameTypeDoc=" + nameTypeDoc + '}';
    }
    
}
