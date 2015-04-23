package ea.photography.domain;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User implements Serializable {
    
    private static final long serialVersionUID = 8901897921686095402L;
    
    @Id
    @GeneratedValue
    private Long userId;
    @Column(nullable = false, unique = true)
    @Email
//    @NotEmpty(message = "{NotEmpty.user.email.validation}")
    @NotEmpty(message = "Email field must have a value")
    private String email;
//    @NotEmpty(message = "{NotEmpty.user.password.validation}")
    @NotEmpty(message = "Password field must have a value")
    private String password;
    @Transient
//    @NotEmpty(message = "{NotEmpty.user.confirmPassword.validation}")
    @NotEmpty(message = "Confirm Password field must have a value")
    private String confirmPassword;
//    @NotEmpty(message = "{NotEmpty.user.firstName.validation")
    @NotEmpty(message = "First name field must have a value")
    private String firstname;
//    @NotEmpty(message = "{NotEmpty.user.lastName.validation}")
    @NotEmpty(message = "Last name field must have a value")
    private String lastname;
    private String role;
    private boolean enabled;
    
    public User() {
        enabled = true;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
    
    
}
