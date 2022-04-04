import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

String code2;

class Player2QRCodeWidget extends StatefulWidget {
  //const Player2QRCodeWidget({Key key}) : super(key: key);
  String code;

  Player2QRCodeWidget(this.code);

  @override
  _Player2QRCodeWidgetState createState() => _Player2QRCodeWidgetState();
}

class _Player2QRCodeWidgetState extends State<Player2QRCodeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      pillarCode();

      code2 = widget.code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1EAB2A),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/jungle_loading.jpg',
                    ).image,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.65),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xFF6F6F6F),
                        border: Border.all(
                          color: Color(0xFF1EAB2A),
                          width: 5,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 7, 3, 0),
                        child: Text(
                          'This is your QR Code storing your username and password',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFEEEEEE),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.03),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: QrImage(
                      data: code2,
                      // data: code.toString(),
                      version: 4,
                    ),
                  ),
                ],
              ),
            ),
                        Align(
              alignment: AlignmentDirectional(0, 0.80),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Color(0xFF6F6F6F),
                        border: Border.all(
                          color: Color.fromARGB(255, 14, 88, 191),
                          width: 5,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 7, 3, 0),
                        child: Text(
                          'Press "SCAN QR" to scan it with your camera or "Import QR" to read it from your Gallery',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFEEEEEE),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Align(
            //   alignment: AlignmentDirectional(0, 0.48),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       FFButtonWidget(
            //         onPressed: () async {
            //           setState(() {
            //             pillarCode();
            //           });

            //           await Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) =>
            //                   NavBarPage(initialPage: 'MAINMENU'),
            //             ),
            //           );
            //         },
            //         text: 'Reload QR',
            //         options: FFButtonOptions(
            //           width: 180,
            //           height: 50,
            //           color: Color(0xFF1EAB2A),
            //           textStyle:
            //               FlutterFlowTheme.of(context).subtitle2.override(
            //                     fontFamily: 'Montserrat',
            //                     color: Colors.white,
            //                     fontSize: 25,
            //                   ),
            //           borderSide: BorderSide(
            //             color: Colors.transparent,
            //             width: 1,
            //           ),
            //           borderRadius: 12,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      ),
    );
  }
}
