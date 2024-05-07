import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDlHmvf9A4uY6osrbtw5AjnXK6Kw2jWjv4",
            authDomain: "opinionai-a2613.firebaseapp.com",
            projectId: "opinionai-a2613",
            storageBucket: "opinionai-a2613.appspot.com",
            messagingSenderId: "808932314858",
            appId: "1:808932314858:web:fb06c8554e38fbd84a1193"));
  } else {
    await Firebase.initializeApp();
  }
}
