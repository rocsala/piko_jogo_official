//import 'package:piko_jogo/games/simon_game/components/simon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:piko_jogo/games/chess/chess.dart';
import 'package:piko_jogo/games/colorgame/startpage.dart';
import 'package:piko_jogo/games/fiar/fiar.dart';
import 'package:piko_jogo/games/junke/junke.dart';
import 'package:piko_jogo/games/memory/memory.dart';
import 'package:piko_jogo/games/reversi/reversi.dart';
//import 'package:piko_jogo/games/scratch/scratch.dart';
import 'package:piko_jogo/games/snake/snake.dart';
import 'package:piko_jogo/games/switch/home.dart';
//import 'package:piko_jogo/games/telly/telly.dart';
import 'package:piko_jogo/games/tic_tac_toe/tic_tac_toe.dart';
//import 'package:piko_jogo/games/snake/snake_main.dart';
import 'package:piko_jogo/games/minesweeper/minesweeper.dart';
import 'package:piko_jogo/games/hangman/hangman_main.dart';
import 'package:piko_jogo/games/wordle/wordle.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../leader_boards/leader_boards_widget.dart';
import '../login/login_widget.dart';
import '../maps/maps_widget.dart';
import '../player2_q_r_code/player2_q_r_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../validation_code/validation_code_widget.dart';

class MainmenuWidget extends StatefulWidget {
  const MainmenuWidget({Key key}) : super(key: key);

  @override
  _MainmenuWidgetState createState() => _MainmenuWidgetState();
}

class _MainmenuWidgetState extends State<MainmenuWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool isEmailVerified = false;

  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser.emailVerified;
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var firebaseUser = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection("users").doc(firebaseUser.uid).set({
      "online": true,
    }, SetOptions(merge: true)).then((_) {
      print("success!");
    });
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF258661),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFCBCBCB),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/pikojogo.jpeg',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/gear.gif',
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                          child: Image.asset(
                            'assets/images/pikogododef.png',
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 100,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 50,
                          borderWidth: 3,
                          buttonSize: 60,
                          fillColor: Colors.white,
                          icon: Icon(
                            Icons.logout,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () async {
                            var firebaseUser =
                                FirebaseAuth.instance.currentUser;
                            FirebaseFirestore.instance
                                .collection("users")
                                .doc(firebaseUser.uid)
                                .set({
                              "online": false,
                            }, SetOptions(merge: true)).then((_) {
                              print("success!");
                            });
                            _signOut();
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.72),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/piko3.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Choose your game',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Image.asset(
                            'assets/images/piku3.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 550,
                        decoration: BoxDecoration(),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: 100,
                              height: MediaQuery.of(context).size.height * 0.66,
                              decoration: BoxDecoration(
                                color: Color(0xFFA0522D),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Wrap(
                                        spacing: 20,
                                        runSpacing: 20,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.center,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            MyTicTacToeApp(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/tictactoe.JPG',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Wordle(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/wordle2.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Snake(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/snake.JPG',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Chess(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/chess4.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Junke(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/junke.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Switchh(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/switch.JPG',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Memory(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/memory.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Fiar(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/fiar.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Hangman(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/hangman2.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Minesweeper(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/minesweeper.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ColorGame(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/colorgame.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              isEmailVerified
                                                  ? await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Reversi(),
                                                      ),
                                                    )
                                                  : await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ValidationCodeWidget(),
                                                      ),
                                                    );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                'assets/images/reversi.jpg',
                                                width: 120,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
