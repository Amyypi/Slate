import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'nav.dart';

// Amplify Flutter Packages
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_api/amplify_api.dart';

// Generated in previous step
import 'models/ModelProvider.dart';
import 'amplifyconfiguration.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_app/controller/controller_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(), // File: Controller
      home: Nav(), // File: home_screen.dart
      debugShowCheckedModeBanner: false, //setup this property
    ); // MaterialApp
  }
}
