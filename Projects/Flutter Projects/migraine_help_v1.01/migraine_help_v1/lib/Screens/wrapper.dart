// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:migraine_help_v1/Screens/Authentication/authenticate.dart';
import 'package:migraine_help_v1/Screens/Home/dashboard.dart';
import 'package:provider/provider.dart';
import '../Models/myuser.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user);

    // return home or authenticate
    if (user == null) {
      // ignore: prefer_const_constructors
      return Authenticate();
    } else {
      return Dashboard();
    }
  }
}
