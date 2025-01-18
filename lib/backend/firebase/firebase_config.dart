import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD_oSAEiMIFxh9ztAPCPauUIMeiHxa87BQ",
            authDomain: "indiavet-207a4.firebaseapp.com",
            projectId: "indiavet-207a4",
            storageBucket: "indiavet-207a4.firebasestorage.app",
            messagingSenderId: "323215544462",
            appId: "1:323215544462:web:a5918bdff29d727cb4f9df"));
  } else {
    await Firebase.initializeApp();
  }
}
