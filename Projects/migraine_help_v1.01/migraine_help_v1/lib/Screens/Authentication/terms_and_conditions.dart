// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

class TermsAndConditions extends StatelessWidget {
  final ImageProvider left_arrow_black_1;
  TermsAndConditions({
    Key? key,
    this.left_arrow_black_1 =
        const AssetImage('assets/images/left_arrow_black.png'),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          //Background
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.7967),
            Pin(size: 2.0, middle: 0.674),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          //Title - Terms & Conditions
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Terms And Condition',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: const Color(0xff000000),
                height: 0.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Paragraphs
          Pinned.fromPins(
            Pin(startFraction: 0.1056, endFraction: 0.1028),
            //the size change here according to screen size
            Pin(size: 360.0, middle: 0.01),
            child: DraggableScrollableSheet(
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Text(
                    'The terms will be applied automatically when the \napp is downloaded and used. User are not allowed \nto copy or modify the app, and our trademarks in \nany way. User are also not allowed to attempt to \nextract the source code of the app and user also \nshould not try to translate the app into other \nlanguages, or make derivative versions. The app itself,\n and all the trade marks, copyright, database rights \nand other intellectual property rights related to it, \nbelonged to Multimedia University.\n\nMultimedia University is committed to ensuring that \nthe app is as useful and efficient as possible. \nTherefore, we reserve the right to make changes to \nthe app or to charge for its services, at any time and \nfor any reason. Multimedia University does not charge \nuser for the app or its services without making it very \nclear exactly what the user is paying for.\n\nThe Migraine Help app stores and processes personal \ndata that you have provided to us, in order to provide \nour Service. It is user’s responsibility to keep your \nphone and access to the app secure. Multimedia \nUniversity recommend that users do not jailbreak \nor root their phone.\n\nThe app does use third party services that declare \ntheir own Terms and Conditions.\n\nLink to Terms and Conditions of third-party service \nproviders used by the app is shown here.\nWith respect to Multimedia University’s responsibility \nfor usage of the app, we endeavour to ensure that it is \nupdated and correct at all times, we do rely on third \nparties to provide information to us so that we can make \nit available to you. Multimedia University accepts no \nliability for any loss, direct or indirect, that users \nexperience as a result of relying wholly on this \nfunctionality of the app\n.\nThe requirements for system (and for any additional \nsystems we decide to extend the availability of the app \nto) may change. Users need to download the updates \nif you want to keep using the app. Multimedia \nUniversity does not promise that it will always update\n the app so that it is relevant to the users. However, \nusers promised to always accept updates to the \napplication when offered to them. Multimedia University \nis also allowed to stop providing the app, and may \nterminate the use of it at any time without giving \nnotice of termination to the users. Unless it is told\notherwise, upon any termination, (a) the rights and \nlicenses granted to you in these terms will end; \n(b) you must stop using the app, and (if needed) delete it\n from your device.\n\nChanges to This Terms and Conditions\nMultimedia University may update our Terms and \nConditions from time to time. Thus, users are advised \nto review this page periodically for any changes. \nMultimedia University will notify the user of any \nchanges by posting the new Terms and Conditions \non this page.\n\nThese terms and conditions are effective as \nof 2021-11-04.\n',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 11,
                      color: const Color(0xff000000),
                      height: 1.8181818181818181,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                );
              },
              //initialChildSize: 0.4, //not sure to use yet
              //minChildSize: 0.2, //not sure to use yet
              maxChildSize: 0.8,
              expand: true,
            ),
          ),
          //Go back image & Linking
          Pinned.fromPins(
            Pin(size: 27.0, start: 23.0),
            Pin(size: 27.0, start: 40.0),
            child:
                // Adobe XD layer: 'left-arrow-black' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  /*pageBuilder: () => SignUp(
                    human_icon_1:
                        const AssetImage('assets/images/human_icon.png'), toggleView: null,
                  ),*/
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: left_arrow_black_1,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
