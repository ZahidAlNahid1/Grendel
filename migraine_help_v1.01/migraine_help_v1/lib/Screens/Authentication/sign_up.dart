// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:migraine_help_v1/Shared/loading.dart';
import '../../Services/auth.dart';
import 'terms_and_conditions.dart';
import 'package:adobe_xd/page_link.dart';

class SignUp extends StatefulWidget {
  final ImageProvider human_icon_1;
  final Function toggleView;

  SignUp({
    Key? key,
    this.human_icon_1 = const AssetImage('assets/images/human_icon.png'),
    required this.toggleView,
  }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  final ImageProvider human_icon_1 =
      const AssetImage('assets/images/human_icon.png');
  bool agree = false;
  final Authservice _auth = Authservice();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  bool loading = false;
  String username = '';
  String email = '';
  String password = '';
  String confirmpassword = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    //Screen
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children: <Widget>[
                //Ellipse 1 (The Back)
                Pinned.fromPins(
                  Pin(start: -140.0, end: -500.0),
                  Pin(start: -60.0, end: -157.0),
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
                //Ellipse 2 (The Middle)
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
                //Ellipse 3 (The Front)
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
                //The human icon
                Pinned.fromPins(
                  Pin(size: 86.0, middle: 0.5),
                  Pin(size: 86.0, middle: 0.1805),
                  child:
                      // Adobe XD layer: 'user' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: human_icon_1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                //Title
                Pinned.fromPins(
                  Pin(size: 100.0, middle: 0.5),
                  Pin(size: 21.0, middle: 0.3086),
                  child: Text(
                    'Migraine Help',
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
                //Username Input
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
                          val!.isEmpty ? 'Please Enter An User Name' : null,
                      onChanged: (val) {
                        setState(() => username = val);
                      },
                    ),
                  ),
                ),
                //Email Input
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
                            height: 1,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xffffffff),
                            ),
                          ),
                          hintText: 'Email'),
                      validator: (val) =>
                          val!.isEmpty ? 'Please A Enter A Proper Email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                ),
                //Password Input
                Pinned.fromPins(
                  Pin(size: 210.0, middle: 0.5000),
                  Pin(size: 23.0, middle: 0.5200),
                  child: Form(
                    key: _formKey2,
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
                            height: 1,
                          ),
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
                //Confirm Password Input
                Pinned.fromPins(
                  Pin(size: 210.0, middle: 0.5000),
                  Pin(size: 23.0, middle: 0.5800),
                  child: Form(
                    key: _formKey3,
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
                            height: 1,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xffffffff),
                            ),
                          ),
                          hintText: 'Confirm Password'),
                      obscureText: true,
                      validator: (val) =>
                          val!.length < 6 ? 'Passwords Not Matching' : null,
                      onChanged: (val) {
                        setState(() => confirmpassword = val);
                      },
                    ),
                  ),
                ),
                //Checkbox
                Pinned.fromPins(
                  Pin(size: 13.0, middle: 0.2421),
                  Pin(size: 13.0, middle: 0.6400),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: const Color(0xffffffff),
                    ),
                    child: Checkbox(
                      value: agree,
                      onChanged: (value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      },
                      activeColor: const Color(0xffffffff),
                      checkColor: const Color(0xff37a78c),
                    ),
                  ),
                ),
                //Term & Conditions
                Pinned.fromPins(
                  Pin(size: 161.0, middle: 0.5327),
                  Pin(size: 16.0, middle: 0.6400),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => TermsAndConditions(
                              left_arrow_black_1: const AssetImage(
                                  'assets/images/left_arrow_black.png'))),
                    ],
                    child: Text(
                      'Terms and Condition',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        height: 1,
                        decoration: TextDecoration.underline,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                //Login Button
                Pinned.fromPins(
                  Pin(size: 125.0, middle: 0.5021),
                  Pin(size: 32.0, middle: 0.7000),
                  child: TextButton(
                    child: Text('Login'),
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
                    onPressed: () async {
                      widget.toggleView();
                    },
                  ),
                ),
                //Signup Button
                Pinned.fromPins(
                  Pin(size: 125.0, middle: 0.5021),
                  Pin(size: 32.0, middle: 0.7800),
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
                    onPressed: () async {
                      if (_formKey.currentState!.validate() &&
                          _formKey1.currentState!.validate() &&
                          _formKey2.currentState!.validate() &&
                          _formKey3.currentState!.validate() &&
                          password == confirmpassword) {
                        setState(() => loading = true);
                        dynamic result = await _auth
                            .registerWithEmailAndPassword(email, password);
                        if (result == null) {
                          setState(() {
                            error = 'Please supply a valid email';
                            loading = false;
                          });
                        } else {
                          print('Its working');
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
