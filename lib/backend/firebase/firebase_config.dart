import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCAuQ_ncdHLSrJWZ7j6ESMZM5_fsqlwC64",
            authDomain: "uitm-eats.firebaseapp.com",
            projectId: "uitm-eats",
            storageBucket: "uitm-eats.appspot.com",
            messagingSenderId: "1013957656747",
            appId: "1:1013957656747:web:3d951fb048a21d60d8f7ee",
            measurementId: "G-54GHTZJ0D0"));
  } else {
    await Firebase.initializeApp();
  }
}
