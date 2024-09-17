import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAlOqezz8b_AZcI8f9li-Z_JhHPsbg1yps",
            authDomain: "l-i-a-dashboard-9qnjg6.firebaseapp.com",
            projectId: "l-i-a-dashboard-9qnjg6",
            storageBucket: "l-i-a-dashboard-9qnjg6.appspot.com",
            messagingSenderId: "801335107226",
            appId: "1:801335107226:web:e41282e4048278b8a4c923"));
  } else {
    await Firebase.initializeApp();
  }
}
