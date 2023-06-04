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
    apiKey: 'AIzaSyAtWS1tYI89tE6TRof_bZusPMCrg6glGuM',
    appId: '1:127124453580:web:48a366d55606c57d9d6a69',
    messagingSenderId: '127124453580',
    projectId: 'testauth-vexef',
    authDomain: 'testauth-vexef.firebaseapp.com',
    storageBucket: 'testauth-vexef.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1ZLrtWExi_dXSaQwZXHUi6z-EpirsDYg',
    appId: '1:127124453580:android:1d047fc104806f359d6a69',
    messagingSenderId: '127124453580',
    projectId: 'testauth-vexef',
    storageBucket: 'testauth-vexef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANWal9mftvBerGWmd1QyLfzc3VcCMNQXE',
    appId: '1:127124453580:ios:a8e3e8328f23cc7a9d6a69',
    messagingSenderId: '127124453580',
    projectId: 'testauth-vexef',
    storageBucket: 'testauth-vexef.appspot.com',
    iosClientId: '127124453580-165tn2e47c0mpnkcu78g0ovare69mkgn.apps.googleusercontent.com',
    iosBundleId: 'com.example.testauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANWal9mftvBerGWmd1QyLfzc3VcCMNQXE',
    appId: '1:127124453580:ios:512cc8c2baab62449d6a69',
    messagingSenderId: '127124453580',
    projectId: 'testauth-vexef',
    storageBucket: 'testauth-vexef.appspot.com',
    iosClientId: '127124453580-6m9u0fl54br225nlupdciiini7stpauf.apps.googleusercontent.com',
    iosBundleId: 'com.example.testauth.RunnerTests',
  );
}