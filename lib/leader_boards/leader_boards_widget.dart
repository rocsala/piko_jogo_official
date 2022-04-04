import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderBoardsWidget extends StatefulWidget {
  const LeaderBoardsWidget({Key key}) : super(key: key);

  @override
  _LeaderBoardsWidgetState createState() => _LeaderBoardsWidgetState();
}

class _LeaderBoardsWidgetState extends State<LeaderBoardsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'MAINMENU'),
              ),
            );
          },
        ),
        title: Text(
          'Leaderboard',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 30,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF258661),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0.95),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0.90),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 258,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        border: Border.all(
                          color: Color(0xFF1EAB2A),
                          width: 4,
                        ),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Color(0xFF0A0A0A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      '#1 Windows XD',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFC4BE25),
                                            fontSize: 17,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                Expanded(
                                child: Container(
                                  width: 135,
                                  height: 50,
                                  decoration: BoxDecoration(),
                                  child: ListTile(
                                    title: Text(
                                      '87',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Color(0xFF0A0A0A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      '#2 Xx_MsRobot_xX',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF6F6F6F),
                                            fontSize: 17,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                Expanded(
                                child: Container(
                                  width: 135,
                                  height: 50,
                                  decoration: BoxDecoration(),
                                  child: ListTile(
                                    title: Text(
                                      '85',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Color(0xFF0A0A0A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      '#3 Felizjueves',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF9F9B20),
                                            fontSize: 17,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                  width: 135,
                                  height: 50,
                                  decoration: BoxDecoration(),
                                  child: ListTile(
                                    title: Text(
                                      '42',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Color(0xFF0A0A0A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      '#4 Router King',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 17,
                                          ),
                                    ),
                                    tileColor: Color(0xFF0A0A0A),
                                    dense: false,
                                  ),
                                ),
                                Expanded(
                                child: Container(
                                  width: 135,
                                  height: 50,
                                  decoration: BoxDecoration(),
                                  child: ListTile(
                                    title: Text(
                                      '20',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              border: Border.all(
                                color: Color(0xFF0A0A0A),
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      '#5 Master chef',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 17,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                  ),
                                ),
                                Expanded(
                               child:  Container(
                                  width: 135,
                                  height: 50,
                                  decoration: BoxDecoration(),
                                  child: ListTile(
                                    title: Text(
                                      '10',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0A0A0A),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
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
            Align(
              alignment: AlignmentDirectional(0, -0.95),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color(0xFF235E36),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.98, 1.3),
                          child: Image.asset(
                            'assets/images/torch.png',
                            width: 40,
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.95),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/podium.jpg',
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.81, -0.52),
                          child: Text(
                            '#2 Xx_MsRobot_xX',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF6F6F6F),
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.73, 0.04),
                          child: Image.asset(
                            'assets/images/piko3.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.17, -0.79),
                          child: Text(
                            '#1 WindowsXD',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFC4BE25),
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.12, -0.33),
                          child: Image.asset(
                            'assets/images/piku3.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.4, 0.87),
                          child: Image.asset(
                            'assets/images/plant.png',
                            width: 40,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.73, 0.15),
                          child: Image.asset(
                            'assets/images/piko3.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.73, -0.42),
                          child: Text(
                            '#3 Felizjueves',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9F9B20),
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.17, 0.91),
                          child: Image.asset(
                            'assets/images/leaf.png',
                            width: 50,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.04, 1.3),
                          child: Image.asset(
                            'assets/images/torch.png',
                            width: 50,
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.07),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 65, 0),
                    child: Text(
                      'Username  : ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Color.fromARGB(255, 248, 224, 0),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Text(
                    'Score :',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          color: Color.fromARGB(255, 248, 224, 0),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
                        Align(
              alignment: AlignmentDirectional(0, -0.22),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                child: Container(
                  width: 264,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4CA16),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color(0xFF8B0000),
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0xFF8B0000),
                          borderRadius: 10,
                          borderWidth: 3,
                          buttonSize: 45,
                          icon: FaIcon(
                            FontAwesomeIcons.tools,
                            color: Color(0xFF8B0000),
                            size: 25,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Page in process creation',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
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
