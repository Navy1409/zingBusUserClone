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
    apiKey: 'AIzaSyDToabU5LViz5l_cWEPFbP-vhjXxX1fmP0',
    appId: '1:876094916219:web:31416851a067b36f60c4de',
    messagingSenderId: '876094916219',
    projectId: 'client-vehicle-project',
    authDomain: 'client-vehicle-project.firebaseapp.com',
    databaseURL: 'https://client-vehicle-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'client-vehicle-project.appspot.com',
    measurementId: 'G-2CRVHP7CEM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCca93iiS7CAqQYQI7uS9sVOC-ujhpVwik',
    appId: '1:876094916219:android:d0de9ea0dc46447f60c4de',
    messagingSenderId: '876094916219',
    projectId: 'client-vehicle-project',
    databaseURL: 'https://client-vehicle-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'client-vehicle-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBr0dPsar34HMIpYrvtlSByI__M0bTInus',
    appId: '1:876094916219:ios:d35934fce3b2283d60c4de',
    messagingSenderId: '876094916219',
    projectId: 'client-vehicle-project',
    databaseURL: 'https://client-vehicle-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'client-vehicle-project.appspot.com',
    iosBundleId: 'com.example.zingBusApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBr0dPsar34HMIpYrvtlSByI__M0bTInus',
    appId: '1:876094916219:ios:028d87375b3e955c60c4de',
    messagingSenderId: '876094916219',
    projectId: 'client-vehicle-project',
    databaseURL: 'https://client-vehicle-project-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'client-vehicle-project.appspot.com',
    iosBundleId: 'com.example.zingBusApp.RunnerTests',
  );
}