package com.example.itdev.izinzin;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v7.app.AppCompatActivity;
import android.widget.Toast;

import com.example.itdev.izinzin.util.helper.ConstantKey;
import com.google.zxing.Result;

import me.dm7.barcodescanner.zxing.ZXingScannerView;

public class ScanActivity extends AppCompatActivity implements ZXingScannerView.ResultHandler {

    private ZXingScannerView mScannerView;

    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);
        ActivityCompat.requestPermissions(ScanActivity.this, new String[]{Manifest.permission.CAMERA}, ConstantKey.REQUEST_PERMISSION_CAMERA);
        mScannerView = new ZXingScannerView(ScanActivity.this);
        setContentView(mScannerView);
    }

    @Override
    public void onPause() {
        super.onPause();
        mScannerView.stopCamera();
    }

    @Override
    public void handleResult(Result result) {
        Intent intent = new Intent();
        intent.setAction(ConstantKey.ACTION_RECEIVE_BARCODE);
        intent.putExtra(ConstantKey.KEY_PASS_BARCODE, result.getText());
        sendBroadcast(intent);
        onBackPressed();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == ConstantKey.REQUEST_PERMISSION_CAMERA && grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            Toast.makeText(ScanActivity.this, "Bạn được phép mở CAMERA", Toast.LENGTH_SHORT).show();
            mScannerView.setResultHandler(ScanActivity.this);
            mScannerView.startCamera();
        } else {
            Toast.makeText(ScanActivity.this, "Bạn không được phép mở CAMERA", Toast.LENGTH_SHORT).show();
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
}
