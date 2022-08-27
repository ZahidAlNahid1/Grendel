// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:migraine_help_v1/Screens/Authentication/log_in.dart';
import 'package:migraine_help_v1/Screens/Authentication/sign_up.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LogIn(
        human_icon_1: const AssetImage('assets/images/human_icon.png'),
        MigrainHelpTitle: 'Migraine Help ',
        toggleView: toggleView,
      );
    } else {
      return SignUp(
        human_icon_1: const AssetImage('assets/images/human_icon.png'),
        toggleView: toggleView,
      );
    }
  }
}
