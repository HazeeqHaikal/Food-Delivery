import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCqnSxQgXKhdaBq8dU4rU5L1EnYA-4JkIA",
            authDomain: "learning-flutter-98f05.firebaseapp.com",
            projectId: "learning-flutter-98f05",
            storageBucket: "learning-flutter-98f05.appspot.com",
            messagingSenderId: "467655263217",
            appId: "1:467655263217:web:6d8af423f74bb43050fa50",
            measurementId: "G-GEPYV2068S"));
  } else {
    await Firebase.initializeApp();
  }
}
