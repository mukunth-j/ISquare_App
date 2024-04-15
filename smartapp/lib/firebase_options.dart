// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBWcqX3NzrvrO7ubi0S928DyBv2QaYjX0g',
    appId: '1:337383591088:web:21218cb62a65ae10a67f75',
    messagingSenderId: '337383591088',
    projectId: 'real-time-gas-monitoring',
    authDomain: 'real-time-gas-monitoring.firebaseapp.com',
    databaseURL: 'https://real-time-gas-monitoring-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'real-time-gas-monitoring.appspot.com',
    measurementId: 'G-SJR3F82FBR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7uhaySiTL9Zj9bs1GPkE4YBrNJBuuXNA',
    appId: '1:337383591088:android:9717b7864b50e02ea67f75',
    messagingSenderId: '337383591088',
    projectId: 'real-time-gas-monitoring',
    databaseURL: 'https://real-time-gas-monitoring-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'real-time-gas-monitoring.appspot.com',
  );
}