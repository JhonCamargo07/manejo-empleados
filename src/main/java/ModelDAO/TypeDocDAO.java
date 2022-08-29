
package ModelDAO;

import ModelVO.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *Esta clase estan los metodos que tienen relacion con la bd
 * @author Jhon Camargo
 * @version 1.0.0
 */
public class TypeDocDAO {
    
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;
    private String sql = "";
    private boolean operacionSuccesfull = false;

    public List<TypeDocVO> select() {
        List<TypeDocVO> typesDocs = new ArrayList<>();
        TypeDocVO typeDocVo = null;
        sql = "SELECT * FROM type_doc";
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                typeDocVo = new TypeDocVO(rs.getInt(1), rs.getString(2));
                typesDocs.add(typeDocVo);
            }
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error al seleccionar los users: " + ex);
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return typesDocs;
    }
}
