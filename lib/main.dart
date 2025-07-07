import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  //Todo: Add widgets  Binding
  //Todo: init local Storage
  //Todo: Await native splash screen
  //Todo: Initialize firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,).then(
  //     (FirebaseApp value) => Get.put(AuthenTciRepository()),
  // );
  //Todo: Initialize Authentication
  runApp(const App());
}
