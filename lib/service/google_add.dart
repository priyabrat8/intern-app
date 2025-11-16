import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

String get bannerAdUnitId {
  return 'YOUR_ADMOB_BANNER_AD_UNIT_ID';
}

class GoogleAdd extends StatefulWidget {
  const GoogleAdd({super.key});

  @override
  State<GoogleAdd> createState() => _GoogleAddState();
}

class _GoogleAddState extends State<GoogleAdd> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();
    BannerAd(
      // adUnitId: bannerAdUnitId,
      adUnitId: "YOUR_ADMOB_BANNER_AD_UNIT_ID",
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, error) => () {
          // print('Ad failed to load: ${error}');
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  Widget build(BuildContext context) {
    if (_bannerAd != null) {
      return SizedBox(
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    } else {
      return SizedBox();
    }
  }
}
