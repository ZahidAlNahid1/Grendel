// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:migraine_help_v1/Services/auth.dart';
import 'package:provider/provider.dart';
import 'Screens/wrapper.dart';
import 'Models/myuser.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      catchError: (User, MyUser) => null,
      value: Authservice().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
