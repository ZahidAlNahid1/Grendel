// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:migraine_help_v1/Services/auth.dart';
import 'package:migraine_help_v1/Shared/loading.dart';

class LogIn extends StatefulWidget {
  final ImageProvider human_icon_1;
  final String MigrainHelpTitle;
  final Function toggleView;
  const LogIn({
    Key? key,
    this.human_icon_1 = const AssetImage('assets/images/human_icon.png'),
    this.MigrainHelpTitle = 'Migraine Help ',
    required this.toggleView,
  }) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final Authservice _auth = Authservice();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children: <Widget>[
                //1st circle
                Pinned.fromPins(
                  Pin(start: -140.0, end: -500.0),
                  Pin(start: 60.0, end: -277.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0x807dffb1),
                          const Color(0x80419966),
                          const Color(0x8048f0c7),
                          const Color(0x802cd179),
                          const Color(0x80b9eed1),
                          const Color(0x8002776f),
                          const Color(0x8039a67f),
                          const Color(0x8037a78c)
                        ],
                        stops: [0.0, 0.038, 0.211, 0.213, 0.218, 1.0, 1.0, 1.0],
                      ),
                    ),
                  ),
                ),
                //2nd circle
                Pinned.fromPins(
                  Pin(start: -69.0, end: -571.0),
                  Pin(start: -108.0, end: -109.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0xbf7dffb1),
                          const Color(0xbf419966),
                          const Color(0xbf48f0c7),
                          const Color(0xbf2cd179),
                          const Color(0xbfb9eed1),
                          const Color(0xbf02776f),
                          const Color(0xbf39a67f),
                          const Color(0xbf37a78c)
                        ],
                        stops: [0.0, 0.038, 0.211, 0.213, 0.218, 1.0, 1.0, 1.0],
                      ),
                    ),
                  ),
                ),
                //3rd circle
                Pinned.fromPins(
                  Pin(start: -165.0, end: -525.0),
                  Pin(start: -267.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [
                          const Color(0xff7dffb1),
                          const Color(0xff419966),
                          const Color(0xff48f0c7),
                          const Color(0xff2cd179),
                          const Color(0xffb9eed1),
                          const Color(0xff02776f),
                          const Color(0xff39a67f),
                          const Color(0xff37a78c)
                        ],
                        stops: [0.0, 0.038, 0.211, 0.213, 0.218, 1.0, 1.0, 1.0],
                      ),
                    ),
                  ),
                ),
                //Title
                Pinned.fromPins(
                  Pin(size: 104.0, middle: 0.5078),
                  Pin(size: 21.0, middle: 0.3086),
                  child: Text(
                    widget.MigrainHelpTitle,
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.75,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                //User image
                Pinned.fromPins(
                  Pin(size: 86.0, middle: 0.5),
                  Pin(size: 86.0, middle: 0.1805),
                  child:
                      // Adobe XD layer: 'user' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: widget.human_icon_1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                //Username
                Pinned.fromPins(
                  Pin(size: 210.0, middle: 0.5000),
                  Pin(size: 23.0, middle: 0.4000),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        height: 1,
                      ),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              height: 1),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xffffffff),
                            ),
                          ),
                          hintText: 'Username'),
                      validator: (val) =>
                          val!.isEmpty ? 'Please a Enter a Proper Email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                ),
                //Password
                Pinned.fromPins(
                  Pin(size: 210.0, middle: 0.5000),
                  Pin(size: 23.0, middle: 0.4600),
                  child: Form(
                    key: _formKey1,
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        height: 1,
                      ),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              height: 1),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xffffffff),
                            ),
                          ),
                          hintText: 'Password'),
                      obscureText: true,
                      validator: (val) => val!.length < 6
                          ? 'Enter A Password Containing 6 Or More Characters'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                  ),
                ),
                //Login button
                Pinned.fromPins(
                  Pin(size: 125.0, middle: 0.5021),
                  Pin(size: 32.0, middle: 0.6053),
                  child: TextButton(
                    child: Text('Log In'),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      backgroundColor: const Color(0xffffffff),
                      textStyle: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: const Color(0xff0b4335),
                        height: 1,
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate() &&
                          _formKey1.currentState!.validate()) {
                        setState(() => loading = true);
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            email, password);
                        if (result == null) {
                          setState(() {
                            error = 'Could not sign in with those credentials';
                            loading = false;
                          });
                        }
                      }
                    },
                  ),
                ),
                //Signup button
                Pinned.fromPins(
                  Pin(size: 125.0, middle: 0.5021),
                  Pin(size: 32.0, middle: 0.6809),
                  child: TextButton(
                    child: Text('Sign Up'),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      backgroundColor: const Color(0xffffffff),
                      textStyle: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: Color.fromARGB(255, 11, 67, 53),
                        height: 1,
                      ),
                    ),
                    onPressed: () {
                      widget.toggleView();
                    },
                  ),
                )
              ],
            ),
          );
  }
}
