// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB3QaaVY3Tr7T8Nn24A2a-wQM6I9-1wj4M',
    appId: '1:900552294736:web:2568a9d5ed297f356f2c55',
    messagingSenderId: '900552294736',
    projectId: 'flutter-fire-authenticat-f1dc7',
    authDomain: 'flutter-fire-authenticat-f1dc7.firebaseapp.com',
    storageBucket: 'flutter-fire-authenticat-f1dc7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIB-US2YtiS6_2n4nWLFonr8OjLCWdS_s',
    appId: '1:900552294736:ios:b3b43785da7028b96f2c55',
    messagingSenderId: '900552294736',
    projectId: 'flutter-fire-authenticat-f1dc7',
    storageBucket: 'flutter-fire-authenticat-f1dc7.appspot.com',
    iosBundleId: 'com.example.firebaseAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIB-US2YtiS6_2n4nWLFonr8OjLCWdS_s',
    appId: '1:900552294736:ios:b3b43785da7028b96f2c55',
    messagingSenderId: '900552294736',
    projectId: 'flutter-fire-authenticat-f1dc7',
    storageBucket: 'flutter-fire-authenticat-f1dc7.appspot.com',
    iosBundleId: 'com.example.firebaseAuthentication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB3QaaVY3Tr7T8Nn24A2a-wQM6I9-1wj4M',
    appId: '1:900552294736:web:fd10658de082c0066f2c55',
    messagingSenderId: '900552294736',
    projectId: 'flutter-fire-authenticat-f1dc7',
    authDomain: 'flutter-fire-authenticat-f1dc7.firebaseapp.com',
    storageBucket: 'flutter-fire-authenticat-f1dc7.appspot.com',
  );
}
