import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:piko_jogo/main.dart';
import 'package:piko_jogo/mainmenu/mainmenu_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ValidationCodeWidget extends StatefulWidget {
  const ValidationCodeWidget({Key key}) : super(key: key);

  @override
  _ValidationCodeWidgetState createState() => _ValidationCodeWidgetState();
}

class _ValidationCodeWidgetState extends State<ValidationCodeWidget> {
  TextEditingController textfieldPasswordController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isEmailVerified = false;
  var timer;
  @override
  void initState() {
    super.initState();
    textfieldPasswordController = TextEditingController();

    isEmailVerified = FirebaseAuth.instance.currentUser.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser.emailVerified;
    });

    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    await user.sendEmailVerification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/wallpaperlogin.png',
                  ).image,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.76, 0.96),
              child: Image.asset(
                'assets/images/piko3.png',
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.84, 0.97),
              child: Image.asset(
                'assets/images/piku3.png',
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.75),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/images/pikojogo.JPG',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.32),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'Your account has been succesfully add to our system.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF11B620),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.06),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'You will recieve a verification code to your e-mail account.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF11B620),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.06),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  isEmailVerified
                      ? 'Your e-mail has been verified'
                      : 'Please verify your e-mail',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF11B620),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, 0.45),
              child: FFButtonWidget(
                onPressed: () {
                  if (isEmailVerified) {
                    var firebaseUser = FirebaseAuth.instance.currentUser;
                    FirebaseFirestore.instance
                        .collection("users")
                        .doc(firebaseUser.uid)
                        .set({
                      "is_validated": true,
                    }, SetOptions(merge: true)).then((_) {
                      print("success!");
                      // Generación de QR cuando el usuario se registra.
                      // Si quitamos el metodo, el QR no se genera
                      // debido a que "pillarCode" aun no ha sido ejecutado.
                      setState(() {
                        pillarCode();
                      });
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'MAINMENU'),
                      ),
                      // MaterialPageRoute(
                      //     builder: (context) => const MainmenuWidget()),
                    );
                  } else {
                    return showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Email not verified yet'),
                        content: const Text(
                            'Please verify your email INBOX or SPAM tray'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                text: 'Main Menu',
                options: FFButtonOptions(
                  width: 200,
                  height: 60,
                  color: Color(0xFF1EAB2A),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
