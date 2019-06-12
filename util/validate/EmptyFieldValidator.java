package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;

public class EmptyFieldValidator extends BaseValidator {

    public EmptyFieldValidator(TextInputLayout errorContainer) {
        super(errorContainer);
    }

    @Override
    public boolean validate(CharSequence charSequence) {
        charSequence = charSequence.toString().trim();
        if (charSequence == null || charSequence.length() == 0) {
            return false;
        } else {
            return true;
        }
    }
}
