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
        return ios;
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
    apiKey: 'AIzaSyBX9QaJD7xfJTytKOQ-wSJ0GFs6Ci0yKqg',
    appId: '1:440038354297:web:5db5538c7ab406ed70d3a8',
    messagingSenderId: '440038354297',
    projectId: 'uas-ppb-6-61b84',
    authDomain: 'uas-ppb-6-61b84.firebaseapp.com',
    storageBucket: 'uas-ppb-6-61b84.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqeBMiV4JYKfi1U0peCyvWUGz-sl9gmF0',
    appId: '1:440038354297:android:efb44437acab877770d3a8',
    messagingSenderId: '440038354297',
    projectId: 'uas-ppb-6-61b84',
    storageBucket: 'uas-ppb-6-61b84.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1ZY4GStZzDVGOYsMS2BXg_kH6XNcoYJk',
    appId: '1:440038354297:ios:03503ca4ecdbadf170d3a8',
    messagingSenderId: '440038354297',
    projectId: 'uas-ppb-6-61b84',
    storageBucket: 'uas-ppb-6-61b84.appspot.com',
    iosBundleId: 'com.example.ppb',
  );
}