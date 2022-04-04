import 'package:piko_jogo/main.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as LatLng;
import 'package:piko_jogo/api/notification_api.dart';
import 'package:provider/provider.dart';
import 'package:piko_jogo/main.dart';

class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key key}) : super(key: key);

  @override
  _CurrentLocationScreen createState() => _CurrentLocationScreen();
}

class _CurrentLocationScreen extends State<CurrentLocationScreen> {
  // Latitud y longitud de la camara de Google Maps
  //ççLatLng mapTournamentsCenter;
  // LatLng mapTournamentsCenter;
  //
  //________________
  GoogleMapController googleMapController;
  //_______________
  //
  // Completer<GoogleMapController> mapTournamentsController;
  // Controlador Google Maps
  //Completer<GoogleMapController> googleMapController;
  final Completer<GoogleMapController> _controller = Completer();
  // Sant Ildefons (ubicación por defecto)
  static const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng.LatLng(41.36311291978801, 2.087906597855917), zoom: 14);
  // Hort d'en Didac Mataró (botón de ubicación)
  static const CameraPosition targetPosition = CameraPosition(
      target: LatLng.LatLng(41.55621223449153, 2.4358286688538957),
      zoom: 20.0,
      bearing: 192.0,
      tilt: 60);
  // final scaffoldKey = GlobalKey<ScaffoldState>();

  Set<Marker> markers = {};

  void initState() {
    super.initState();
  }

Set<Circle> mycircles = Set.from([Circle(
    circleId: CircleId('1'),
    center: LatLng.LatLng(41.55621223449153, 2.4358286688538957),
    radius: 10,
    strokeWidth: 10,
    strokeColor: Color(0xFF1EAB2A),
    fillColor: Colors.lightBlue.shade700.withOpacity(0.8)
)]);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
      // key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF15771D),
        automaticallyImplyLeading: true,
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
          'Champion Locator',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Color(0xFFEEEEEE),
                fontSize: 22,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 5),
            child: FlutterFlowIconButton(
              borderColor: Color.fromARGB(255, 255, 251, 6),
              borderRadius: 15,
              borderWidth: 4,
              buttonSize: 55,
              icon: FaIcon(
                FontAwesomeIcons.crown,
                color: Color.fromARGB(255, 255, 251, 6),
                size: 25,
              ),
              onPressed: () async {
                goToMataro();
                markers.add(Marker(
                    markerId: const MarkerId('mataro'),
                    position:
                        // !!!! Hacer que la latitud y longitut no se tenga de volver a añadir!!!!!!
                        LatLng.LatLng(41.55621223449153, 2.4358286688538957)));
                setState(() {});
              },
              
            ),
            
          ),
         
        ],
        
        centerTitle: true,
        elevation: 4,
      ),

      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
          _controller.complete(controller);

        },
         circles: mycircles,
      ),
      // Cuando el usuario quiera compartir ubicación pulsando el botón...

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {

          Position position = await _determinePosition();
          // Visualiza la localización al usuario
          googleMapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng.LatLng(position.latitude, position.longitude),
                  zoom: 14)));
          // markers = Marca icono señalando ubicación . clear() borra los marcadores anteriores
          markers.clear();
          // Añade un marcador con la ubicación del usuario leyendo su latitud y longitud
          markers.add(Marker(
              markerId: const MarkerId('currentLocation'),
              position: LatLng.LatLng(position.latitude, position.longitude)));
          setState(() {});
        },
        label: const Text("Where am I?"),
        icon: const Icon(Icons.my_location_sharp),
      ),
      ),
    );
  }



  Future<void> goToMataro() async {
    markers.clear();
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  }

// Permisos de ubicación -> Control de errores
  Future<Position> _determinePosition() async {

                                      
    // Boolean que tiene "true" (servicio de ubicación en marxa) o "false" (servicio de ubicación apagado)
    bool serviceEnabled;
    // Boolean que tiene "true" (usuario acepta) o "false" (usuario niega)
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}


      // backgroundColor: Color(0xFF1EAB2A),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height * 1,
      //   child: Stack(
      //     children: [
      //       Align(
      //         alignment: AlignmentDirectional(0, -1),
      //         child: Container(
      //           width: MediaQuery.of(context).size.width,
      //           height: MediaQuery.of(context).size.height * 0.88,
      //           decoration: BoxDecoration(
      //             color: Color(0xFFEEEEEE),
      //             borderRadius: BorderRadius.circular(20),
      //           ),
                // child: FlutterFlowGoogleMap(
                //   controller: googleMapController,
                //   onCameraIdle: (latLng) => mapTournamentsCenter = latLng,
                //   initialLocation: mapTournamentsCenter,
                //   markerColor: GoogleMarkerColor.green,
                //   mapType: MapType.normal,
                //   style: GoogleMapStyle.standard,
                //   initialZoom: 14,
                //   allowInteraction: true,
                //   allowZoom: true,
                //   showZoomControls: true,
                //   showLocation: true,
                //   showCompass: true,
                //   showMapToolbar: false,
                //   showTraffic: false,
                //   centerMapOnMarkerTap: true,
                // ), 
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
