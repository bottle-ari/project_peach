// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_auth/firebase_auth.dart';
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
// );

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
    apiKey: 'AIzaSyAbUbHaRnqSKc5jyFkLpYIjY0M0ADoHWoY',
    appId: '1:45608429421:web:44f854ab37ed9392155c64',
    messagingSenderId: '45608429421',
    projectId: 'peach-app-c04d5',
    authDomain: 'peach-app-c04d5.firebaseapp.com',
    storageBucket: 'peach-app-c04d5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_2qGIzBM2LdkcVEO4Kc3dO8qIp8emL5c',
    appId: '1:45608429421:android:4570a3ee7905560d155c64',
    messagingSenderId: '45608429421',
    projectId: 'peach-app-c04d5',
    storageBucket: 'peach-app-c04d5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCodJylGc4KnqmhgjNCMkGzMs5YhdEv3yM',
    appId: '1:45608429421:ios:c7d99f474ce53401155c64',
    messagingSenderId: '45608429421',
    projectId: 'peach-app-c04d5',
    storageBucket: 'peach-app-c04d5.appspot.com',
    iosClientId: '45608429421-0gaekck8lb2g0n4hk98gg5fb1c913r30.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectPeach',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCodJylGc4KnqmhgjNCMkGzMs5YhdEv3yM',
    appId: '1:45608429421:ios:0378ca4ef46502ec155c64',
    messagingSenderId: '45608429421',
    projectId: 'peach-app-c04d5',
    storageBucket: 'peach-app-c04d5.appspot.com',
    iosClientId: '45608429421-oo2th2ghdihcrte1nmf19ipv4noe66i8.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectPeach.RunnerTests',
  );
}
