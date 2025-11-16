import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:internapp/pages/about.dart';
import 'package:internapp/pages/home.dart';
import 'package:internapp/pages/intern.dart';
import 'package:internapp/pages/terms.dart';
import 'package:internapp/service/notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await FirebaseAppCheck.instance.activate(
  //   androidProvider: AndroidProvider.playIntegrity 
  // ); // Uncomment this line to enable App Check with Play Integrity in Production
  await initNotificationService();
  MobileAds.instance.initialize();

  runApp(MaterialApp(
    title: 'UIntern',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.lightBlue),
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/intern_details': (context) => const Intern(),
      '/about': (context) => const About(),
      '/privacy': (context) => const Terms(),
    },
    )
    );
}


