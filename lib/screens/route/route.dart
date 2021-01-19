import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart'
    as MapsWeb;
import 'package:keframa/components/app_bar.dart';
import 'package:keframa/components/divider.dart';
import 'package:keframa/theme/style.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: MainAppBar(
        appBar: AppBar(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 120, 0),
                        child: Text('The Route', style: headerStyle),
                      ),
                    ],
                  ),
                  CustomDivider(),
                  SizedBox(height: 20),
                  SizedBox(
                      width: 500,
                      height: 500,
                      child: Container(
                        child: FireMap(),
                      )),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FireMap extends StatefulWidget {
  @override
  _FireMapState createState() => _FireMapState();
}

class _FireMapState extends State<FireMap> {
  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  MapsWeb.GoogleMapController webMapController;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(51.5055, 0.0754), zoom: 15),
        onMapCreated: _onMapCreated,
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
      ),
      Positioned(
        bottom: 50,
        right: 10,
        child: FlatButton(
          child: Icon(Icons.pin_drop, color: Colors.white),
          color: Colors.green,
          onPressed: () {},
        ),
      ),
    ]);
  }

  _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  // _addMarker() {
  //   int _markerIdCounter = 1;
  //   final String markerIdVal = 'marker_id_$_markerIdCounter';
  //   _markerIdCounter++;
  //   final MarkerId markerId = MarkerId(markerIdVal);

  //   // var marker = Marker(markerId: markerId, position: LatLng(51.5055, 0.0754));
  // }
}
