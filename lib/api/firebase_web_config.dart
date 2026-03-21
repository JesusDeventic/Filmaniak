import 'package:firebase_core/firebase_core.dart';

/// Solo Web necesita `FirebaseOptions` explícitas; iOS/Android usan
/// `GoogleService-Info.plist` / `google-services.json` (y en iOS `FirebaseApp.configure()`).
class FilmaniakFirebaseWebConfig {
  static const FirebaseOptions webFirebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyBiKIkRHFKH_cr2cwCUHAzu8vWKMtq_EkM',
    appId: '1:344135822235:web:9462fbb5a6d29abf8f4f3e',
    messagingSenderId: '344135822235',
    projectId: 'filmaniak-app',
    authDomain: 'filmaniak-app.firebaseapp.com',
    storageBucket: 'filmaniak-app.firebasestorage.app',
  );

  static const String webVapidKey =
      'BC-uxoWgohdFoUKoQumf5qlFQzaA6dpQYB4UcKlCNLl0-uIp1Ey-KuAF7RtAxQrxUSFxTCBxszUocEyUyoPLDSk';
}
