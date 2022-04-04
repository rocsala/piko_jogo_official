import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:piko_jogo/auth/QR/importqr.dart';
import 'package:piko_jogo/main.dart';
import 'package:piko_jogo/validation_code/validation_code_widget.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../auth/auth_util.dart';
import '../auth/QR/qr_scan_page.dart';
import '../create_account/create_account_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../mainmenu/mainmenu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piko_jogo/api/notification_api.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatefulWidget {
  final String passwd;
  final String user;
  const LoginWidget({Key key, this.passwd, this.user}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController textEmailInputController;
  TextEditingController textPasswordInputController;
  bool textPasswordInputVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool isEmailVerified = false;
  //isEmailVerified = FirebaseAuth.instance.currentUser.emailVerified;

  @override
  void initState() {
    Provider.of<NotificationService>(context, listen: false).initialize();
    super.initState();
    textEmailInputController = TextEditingController();
    textPasswordInputController = TextEditingController();

    textEmailInputController.text = widget.user;
    textPasswordInputController.text = widget.passwd;
    textPasswordInputVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
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
                alignment: AlignmentDirectional(0, -0.75),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
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
                alignment: AlignmentDirectional(0, 0.35),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 330,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2AE437),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFFE6E6E6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: TextFormField(
                                      controller: textEmailInputController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'E-Mail',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 330,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2AE437),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFFE6E6E6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: TextFormField(
                                      controller: textPasswordInputController,
                                      obscureText: !textPasswordInputVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => textPasswordInputVisibility =
                                                !textPasswordInputVisibility,
                                          ),
                                          child: Icon(
                                            textPasswordInputVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.88,
                                height: 40,
                                decoration: BoxDecoration(),
                                child: Consumer<NotificationService>(
                                  builder: (context, model, _) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () =>
                                                model.imageNotification(),
                                            child: Text(
                                                "Pikojogo's Welcome Notification")),
                                      ]),

                                  // onTap: () async {
                                  //   await Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           CreateAccountWidget(),
                                  //     ),
                                  //   );
                                  // },
                                  // child: Text(
                                  //   'Dont\' have an account? Create one!',
                                  //   textAlign: TextAlign.center,
                                  //   style: FlutterFlowTheme.of(context)
                                  //       .bodyText1
                                  //       .override(
                                  //         fontFamily: 'Poppins',
                                  //         color: Color(0xFF1EAB2A),
                                  //         fontSize: 17,
                                  //         fontWeight: FontWeight.w600,
                                  //       ),
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Wrap(
                            spacing: 15,
                            runSpacing: 15,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.center,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 160,
                                height: 60,
                                decoration: BoxDecoration(),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final user = await signInWithEmail(
                                      context,
                                      textEmailInputController.text,
                                      textPasswordInputController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }
                                    isEmailVerified = FirebaseAuth
                                        .instance.currentUser.emailVerified;
                                        // Generación de QR cuando el usuario se valida.
                                        // Si quitamos el metodo, el QR no se genera
                                        // debido a que "pillarCode" aun no ha sido ejecutado.
                                    setState(() {
                                      pillarCode();
                                    });

                                    if (isEmailVerified) {
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => NavBarPage(
                                                initialPage: 'MAINMENU'),
                                          ));
                                    } else {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ValidationCodeWidget(),
                                        ),
                                      );
                                    }
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0xFF1EAB2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CreateAccountWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Create Account',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0xFF1A8308),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => QRScanPage(),
                                      ),
                                    );
                                  },
                                  text: 'Scan QR',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0xFF0943A0),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    String code =
                                        textEmailInputController.text +
                                            " " +
                                            textPasswordInputController.text;
                                    // print('btn_read_qr pressed ...');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ImportQR(),
                                      ),
                                    );
                                  },
                                  text: 'Import QR',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 40,
                                    color: Color(0xFF37349C),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ),

                              // Container(
                              //   width: 160,
                              //   height: 60,
                              //   decoration: BoxDecoration(
                              //     color: Color(0xFFEEEEEE),
                              //   ),
                              //   child: Consumer<NotificationService>(
                              //     builder: (context, model, _) => Column(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           ElevatedButton(
                              //               onPressed: () =>
                              //                   model.imageNotification(),
                              //               child:
                              //                   Text('Instant Notification')),
                              //         ]),
                              //     child: FFButtonWidget(
                              //       onPressed: () async {},
                              //       text: 'Instructions',
                              //       options: FFButtonOptions(
                              //         width: 130,
                              //         height: 40,
                              //         color: Color(0xFF37349C),
                              //         textStyle: FlutterFlowTheme.of(context)
                              //             .subtitle2
                              //             .override(
                              //               fontFamily: 'Montserrat',
                              //               color: Colors.white,
                              //               fontSize: 24,
                              //             ),
                              //         borderSide: BorderSide(
                              //           color: Colors.transparent,
                              //           width: 2,
                              //         ),
                              //         borderRadius: 12,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
