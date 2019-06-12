package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;
import android.text.TextUtils;
import android.widget.EditText;

public class ConfirmFieldValidator extends BaseValidator {

    private final String otherFieldsEmptyMessage;

    public ConfirmFieldValidator(TextInputLayout errorContainer) {
        super(errorContainer);
        errorMessage = "Password must be the same";
        emptyMessage = "Confirm field can not be empty";
        otherFieldsEmptyMessage = "Original Field can not be empty";
    }

    @Override
    protected boolean isValid(CharSequence charSequence) {
        return super.isValid(charSequence);
    }

    @Override
    public boolean confirm(CharSequence s1, CharSequence s2) {
        if (TextUtils.isEmpty(s1)) {
            errorContainer.setError(otherFieldsEmptyMessage);
            return false;
        } else if (TextUtils.equals(s1, s2)) {
            errorContainer.setError("");
            return true;
        } else if (TextUtils.isEmpty(s2)) {
            errorContainer.setError(errorMessage);
            return false;
        } else {
            errorContainer.setError(errorMessage);
            return false;
        }
    }
}
