package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;
import android.widget.EditText;

public class BaseValidator {
    protected TextInputLayout errorContainer;
    protected String errorMessage = "";
    protected String emptyMessage = "This field is required";

    public BaseValidator(TextInputLayout errorContainer) {
        this.errorContainer = errorContainer;
    }

    public boolean validate(CharSequence charSequence) {
        if (emptyMessage != null && (charSequence == null || charSequence.length() == 0)) {
            errorContainer.setError(emptyMessage);
            return false;
        } else if (isValid(charSequence)) {
            errorContainer.setError("");
            return true;
        } else {
            errorContainer.setError(errorMessage);
            return false;
        }
    }

    protected boolean isValid(CharSequence charSequence) {
        return true;
    }

    public boolean confirm(CharSequence s1, CharSequence s2) {
        return s1.equals(s2);
    }
}
