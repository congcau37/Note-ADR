package com.example.itdev.izinzin.util.validate;

import android.support.design.widget.TextInputLayout;
import android.widget.EditText;

public class PasswordFieldValidator extends BaseValidator {

    private int minLength;

    public PasswordFieldValidator(TextInputLayout errorContainer, int length) {
        super(errorContainer);
        minLength = length;
        errorMessage = "Mật khẩu không đủ mạnh";
    }

    @Override
    protected boolean isValid(CharSequence charSequence) {
        return charSequence.length() >= minLength;
    }
}
