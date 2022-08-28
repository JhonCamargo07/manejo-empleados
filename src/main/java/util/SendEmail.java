package util;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author Camargo
 */
public class SendEmail {

    public static void sendMail(String server, String port, final String mail, final String password, String address, String affair, String message) throws AddressException, MessagingException {
        // Configuracion del SMTP
        Properties property = new Properties();

        property.put("mail.smtp.host", server);
        property.put("mail.smtp.port", port);
        property.put("mail.smtp.auth", "true"); // Autenticar el inicio de sesión
        property.put("mail.smtp.starttls.enable", "true"); // Asegurar que el tls esté activo
        property.put("mail.smtp.starttls.required", true);
        property.put("mail.smtp.ssl.protocols", "TLSv1.2");
        property.put("mail.smtp.ssl.trust","smtp.gmail.com");

        Authenticator autenticar = new Authenticator() {
            public PasswordAuthentication getAuthentication() {
                return new PasswordAuthentication(mail, password);
            }
        };

        Session sesion = Session.getInstance(property, autenticar);

        Message msg = new MimeMessage(sesion);
        msg.setFrom(new InternetAddress(mail));

        InternetAddress[] addresses = {new InternetAddress(address)};
        msg.setRecipients(Message.RecipientType.TO, addresses);
        msg.setSubject(affair);
        msg.setSentDate(new Date());
        msg.setText(message);

        Transport.send(msg, mail, password);

    }
}