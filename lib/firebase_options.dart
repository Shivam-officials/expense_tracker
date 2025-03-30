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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfc8i4vDtPPOxBz7s93G6-0PSBNoojDEc',
    appId: '1:489669595873:android:92d95eb1a2365978091da0',
    messagingSenderId: '489669595873',
    projectId: 'cipherschool-2ae11',
    storageBucket: 'cipherschool-2ae11.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLOJnJkCwVuTKRmw9D2A4AnM5y7-n2ooM',
    appId: '1:489669595873:ios:6efa0e5fe664116f091da0',
    messagingSenderId: '489669595873',
    projectId: 'cipherschool-2ae11',
    storageBucket: 'cipherschool-2ae11.firebasestorage.app',
    iosClientId: '489669595873-2cfun7jsaojspmm3lddgmbvbq1rfr1ij.apps.googleusercontent.com',
    iosBundleId: 'com.cipherscholl.assignment.expenseTracker',
  );
}
