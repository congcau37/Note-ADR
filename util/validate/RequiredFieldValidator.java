package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;
import android.widget.EditText;

public class RequiredFieldValidator extends BaseValidator {

    public RequiredFieldValidator(TextInputLayout errorContainer) {
        super(errorContainer);
    }

    @Override
    protected boolean isValid(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }
}
