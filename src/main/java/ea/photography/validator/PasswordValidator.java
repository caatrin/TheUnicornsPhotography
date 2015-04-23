package ea.photography.validator;

import ea.photography.domain.User;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class PasswordValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {
        User u = (User) target;

        if (!u.getConfirmPassword().equals(u.getPassword())) {
            errors.rejectValue("confirmPassword",
                    "ea.theunicornsphotography.validator.PasswordValidator.message");
        }

    }

}
