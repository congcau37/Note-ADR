package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;
import android.util.Patterns;
import android.widget.EditText;

public class EmailFieldValidator extends BaseValidator {

    public EmailFieldValidator(TextInputLayout errorContainer) {
        super(errorContainer);
        errorMessage = "Invalid Email Address";
    }

    public boolean validate(CharSequence charSequence) {
        if (isValid(charSequence)) {
            errorContainer.setError("");
            return true;
        } else {
            errorContainer.setError(errorMessage);
            return false;
        }
    }

    @Override
    protected boolean isValid(CharSequence charSequence) {
        return Patterns.EMAIL_ADDRESS.matcher(charSequence).matches();
    }
}
