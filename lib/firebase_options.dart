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
        return macos;
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
    apiKey: 'AIzaSyCnrhMFnoSf1CmFW7HIJ8ZYxTPzl8KAcRI',
    appId: '1:996564799166:web:2a7799075eeeb17f16d8ef',
    messagingSenderId: '996564799166',
    projectId: 'healthcheck-up',
    authDomain: 'healthcheck-up.firebaseapp.com',
    storageBucket: 'healthcheck-up.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkTsEA6iCwQQRjHN75yZ7o7Kva-1cTqoo',
    appId: '1:996564799166:android:eee8f3dfde0dd16f16d8ef',
    messagingSenderId: '996564799166',
    projectId: 'healthcheck-up',
    storageBucket: 'healthcheck-up.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWpkM1EJXTejY0tjtpOhKQjC3U0fw41zM',
    appId: '1:996564799166:ios:91c93d7e57204ecb16d8ef',
    messagingSenderId: '996564799166',
    projectId: 'healthcheck-up',
    storageBucket: 'healthcheck-up.appspot.com',
    iosBundleId: 'com.example.healthcheckup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWpkM1EJXTejY0tjtpOhKQjC3U0fw41zM',
    appId: '1:996564799166:ios:46297e69ca809b2e16d8ef',
    messagingSenderId: '996564799166',
    projectId: 'healthcheck-up',
    storageBucket: 'healthcheck-up.appspot.com',
    iosBundleId: 'com.example.healthcheckup.RunnerTests',
  );
}
