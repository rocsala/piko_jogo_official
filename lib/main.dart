import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:piko_jogo/validation_code/validation_code_widget.dart';
import 'package:piko_jogo/welcome/welcome_widget.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';
import 'package:piko_jogo/auth/QR/importqr.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/internationalization.dart';
import 'package:piko_jogo/login/login_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'mainmenu/mainmenu_widget.dart';
import 'player2_q_r_code/player2_q_r_code_widget.dart';
import 'maps/maps_widget.dart';
import 'leader_boards/leader_boards_widget.dart';
import 'package:provider/provider.dart';
import 'package:piko_jogo/api/notification_api.dart';

String passwd;
String email;
String code;
final FirebaseAuth auth = FirebaseAuth.instance;
var uid;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

void pillarCode() {
  try {
    inputData();
    Future<Null> ref = FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        print(doc["password"]);
        passwd = doc["password"];
        code = email + ' ' + passwd;
        print(code);
      });
    });
  } catch (e) {}
}

void inputData() {
  final User user = auth.currentUser;
  uid = user.uid;
  email = user.email;
  // here you write the codes to input the data into firestore
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = ThemeMode.system;
  Stream<PikoJogoFirebaseUser> userStream;
  PikoJogoFirebaseUser initialUser;
  bool displaySplashImage = true;
  final authUserSub = authenticatedUserStream.listen((_) {});

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  void initState() {
    super.initState();
    // Evitemos que el QR falle con las credenciales del usuario
    // y que siga vigente aunque la app se cierre sin cerrar
    // sesión correctamente
    setState(() {
      pillarCode();
    });

    userStream = pikoJogoFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          title: 'Piko Jogo',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            FFLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: _locale,
          supportedLocales: const [Locale('en', '')],
          theme: ThemeData(brightness: Brightness.light),
          themeMode: _themeMode,
          home: initialUser == null || displaySplashImage
              ? Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitFadingCube(
                      color: Color(0xFF11B620),
                      size: 50,
                    ),
                  ),
                )
              : currentUser.loggedIn
                  ? FirebaseAuth.instance.currentUser.emailVerified
                      ? NavBarPage()
                      : ValidationCodeWidget()
                  : WelcomeWidget(),
        ),
        providers: [
          ChangeNotifierProvider(create: (_) => NotificationService())
        ]);
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'MAINMENU';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'MAINMENU': MainmenuWidget(),
      'Player2QRCode': Player2QRCodeWidget(code),
      'Maps': CurrentLocationScreen(),
      'LeaderBoards': LeaderBoardsWidget(),
      //'QRSCAN': QRScanPage(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        onTabChange: (i) =>
            setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Color.fromARGB(255, 180, 180, 182),
        color: Color(0x8A000000),
        activeColor: Color(0xFF1A8308),
        tabBackgroundColor: Color(0x00000000),
        tabActiveBorder: Border.all(
          color: Color(0xFFB99D1E),
          width: 3,
        ),
        tabBorderRadius: 5,
        tabMargin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        padding: EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
        gap: 0,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        duration: Duration(milliseconds: 500),
        haptic: false,
        tabs: [
          GButton(
            icon: FontAwesomeIcons.gamepad,
            text: '     Games',
            iconSize: 34,
          ),
          GButton(
            icon: Icons.qr_code_scanner_sharp,
            text: ' Your QR',
            iconSize: 34,
          ),
          GButton(
            icon: FontAwesomeIcons.mapMarkedAlt,
            text: '   Maps',
            iconSize: 34,
          ),
          GButton(
            icon: Icons.leaderboard_sharp,
            text: '  Leaderboard',
            iconSize: 34,
          )
        ],
      ),
    );
  }
}
