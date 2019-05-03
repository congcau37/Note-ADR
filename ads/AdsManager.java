package tuvi.congdev37.com.tuvi2019.utils;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;

import tuvi.congdev37.com.tuvi2019.R;
import tuvi.congdev37.com.tuvi2019.activity.MainActivity;
import tuvi.congdev37.com.tuvi2019.fragment.TuViTronDoiFragment;

public class AdsManager {

    private InterstitialAd mInterstitialAd;

    public AdsManager(Context context) {
        initAds(context);
    }

    private void initAds(Context context) {
        mInterstitialAd = new InterstitialAd(context);
        mInterstitialAd.setAdUnitId(context.getResources().getString(R.string.full_screen_ad_unit_id));
        mInterstitialAd.loadAd(new AdRequest.Builder().build());
        mInterstitialAd.setAdListener(new AdListener() {

            @Override
            public void onAdClosed() {
                mInterstitialAd.loadAd(new AdRequest.Builder().build());
            }
        });
    }

    public void showFullAds(final Activity context) {
        if (mInterstitialAd != null && mInterstitialAd.isLoaded()) {
            mInterstitialAd.show();
            mInterstitialAd.setAdListener(new AdListener() {
                @Override
                public void onAdLoaded() {
                    // Code to be executed when an ad finishes loading.
                }

                @Override
                public void onAdFailedToLoad(int errorCode) {
                    // Code to be executed when an ad request fails.
                }

                @Override
                public void onAdOpened() {
                    // Code to be executed when the ad is displayed.
                }

                @Override
                public void onAdLeftApplication() {
                    // Code to be executed when the user has left the app.
                }

                @Override
                public void onAdClosed() {
                    // Code to be executed when when the interstitial ad is closed.
                    context.finish();
                }
            });
        } else {
            context.finish();
        }
    }
}
