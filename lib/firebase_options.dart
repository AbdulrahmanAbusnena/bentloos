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
        return android;
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
    apiKey: 'AIzaSyBINuqzyA1LC5-qxvC98nCGvdR1-S12jzw',
    appId: '1:441475316314:web:076e9cb9466c67547db663',
    messagingSenderId: '441475316314',
    projectId: 'bentlos',
    authDomain: 'bentlos.firebaseapp.com',
    storageBucket: 'bentlos.appspot.com',
    measurementId: 'G-KQHM69SX2V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXYrE_ihMnaDBV8hrizXKbpkNs3mT4pAg',
    appId: '1:441475316314:android:9c767d5d0bc3bdc07db663',
    messagingSenderId: '441475316314',
    projectId: 'bentlos',
    storageBucket: 'bentlos.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcmC7-wcvvpaYFFHb1fiFD_9Vpw34bfiw',
    appId: '1:441475316314:ios:657703237ad7ed537db663',
    messagingSenderId: '441475316314',
    projectId: 'bentlos',
    storageBucket: 'bentlos.appspot.com',
    iosBundleId: 'com.bent.bentlos',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcmC7-wcvvpaYFFHb1fiFD_9Vpw34bfiw',
    appId: '1:441475316314:ios:657703237ad7ed537db663',
    messagingSenderId: '441475316314',
    projectId: 'bentlos',
    storageBucket: 'bentlos.appspot.com',
    iosBundleId: 'com.bent.bentlos',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBINuqzyA1LC5-qxvC98nCGvdR1-S12jzw',
    appId: '1:441475316314:web:00a7a92ba2bc1bbf7db663',
    messagingSenderId: '441475316314',
    projectId: 'bentlos',
    authDomain: 'bentlos.firebaseapp.com',
    storageBucket: 'bentlos.appspot.com',
    measurementId: 'G-NNR2T3EMS0',
  );
}
