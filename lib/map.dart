import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:get/get.dart';


//style URL  mapbox://styles/mohamed3dwave/ckr3jch6m137n18mp3iaj7izf

// access token  pk.eyJ1IjoibW9oYW1lZDNkd2F2ZSIsImEiOiJja3IzaXlhNWsybTZnMzFvNnF3NHZiaWJ6In0.H3azW75br-_oAxm9zg_9eg
// preview only https://api.mapbox.com/styles/v1/mohamed3dwave/ckr3jch6m137n18mp3iaj7izf.html?fresh=true&title=view&access_token=pk.eyJ1IjoibW9oYW1lZDNkd2F2ZSIsImEiOiJja3IzaXlhNWsybTZnMzFvNnF3NHZiaWJ6In0.H3azW75br-_oAxm9zg_9eg
class DispoPlacesScreen extends StatefulWidget {
  DispoPlacesScreen() : super();

  @override
  _DispoPlacesScreenState createState() => _DispoPlacesScreenState();
}

class _DispoPlacesScreenState extends State<DispoPlacesScreen> {
  final String token =
      'pk.eyJ1IjoibWV5YW1vciIsImEiOiJja3FrcDdmaTMxN3B0MnBueHB3NjJmcTd2In0.7tTcvF9WNZVP07kDyVQDcA';
  final String style =
      'mapbox://styles/meyamor/ckqkq9dbg3k6c17pmwx5x7fgr';
  final double infoHeight = 364.0;
  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.1);
    final screenWidth = MediaQuery.of(context).size.width;

    Widget card(String titile) {
      return Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey, //Color(0xfff05945),
              offset: const Offset(0, 0),
              blurRadius: 5.0),
        ], color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
        width: screenWidth,
        height: 60,
        child: Material(
          borderRadius: BorderRadius.circular(12.0),
          child: InkWell(
            onTap: () {
              print("google tapped");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$titile",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 7.0,
                  ),
                  ElevatedButton(
                      onPressed: () => print("details tapped"), child: null,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 0.9,
                child: FlutterMap(
                  options: MapOptions(
                    // center: LatLng(51.5074, 0.1278),
                    // onLongPress: (latlng) async {
                    //   setState(() {
                    //     nav = true;
                    //   });
                    //   wayPoints.add(_origin);
                    //   wayPoints.add(_stop1);
                    //   wayPoints.add(_stop2);
                    //   wayPoints.add(_stop3);
                    //   wayPoints.add(_stop4);
                    //   // await _directions.startNavigation(
                    //   //     wayPoints: wayPoints, options: _options);
                    // },
                    //onTap: (_) => _popupLayerController.hidePopup(),
                    zoom: 10.0,
                    minZoom: 4,
                    // plugins: [UserLocationPlugin(), PopupMarkerPlugin()],
                  ),
                  layers: [
                    new TileLayerOptions(
                      urlTemplate: 
                          "https://api.mapbox.com/styles/v1/meyamor/ckqkq9dbg3k6c17pmwx5x7fgr/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWV5YW1vciIsImEiOiJja3FrcDdmaTMxN3B0MnBueHB3NjJmcTd2In0.7tTcvF9WNZVP07kDyVQDcA",
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoibWV5YW1vciIsImEiOiJja3FrcDdmaTMxN3B0MnBueHB3NjJmcTd2In0.7tTcvF9WNZVP07kDyVQDcA',
                      },
                    ),
                    // PopupMarkerLayerOptions(
                    //   popupController: _popupLayerController,
                    //   markers: widget.markers,
                    //   popupSnap: PopupSnap.markerTop,
                    //   popupBuilder: (BuildContext context, Marker marker) =>
                    //       ExamplePopup(marker),
                    // ),
                    // MarkerLayerOptions(
                    //   markers: widget.markers,
                    // ),
                    //userLocationOptions,
                  ],
                  //mapController: mapController,
                ),
              )
            ],
          ),
          Positioned(
            top: (MediaQuery.of(context).size.width / 1.0),
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: infoHeight,
                      maxHeight:
                          tempHeight > infoHeight ? tempHeight : infoHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 18, right: 16),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Hotels disponibles:", //'Web Design\nCourse',
                            //textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 0.27,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 18, right: 16),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Gabes", //'Web Design\nCourse',
                            //textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              letterSpacing: 0.27,
                              color: Colors.black,
                            ),
                          ),
                         
                        ),
                      ),
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.blueGrey,
                      ),
                      Expanded(
                        child: ListView.builder(
                            padding: const EdgeInsets.all(5),
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: card("Hotel Mouradi"),
                                
                              );
                            }),
                        // child: SingleChildScrollView(
                        //   //controller: controller,
                        //   child: Column(
                        //     children: [
                        //       Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 16, right: 16, top: 8, bottom: 8),
                        //           child: card("Sbeitla")),
                        //     ],
                        //   ),
                        // ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).padding.bottom,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: SizedBox(
              width: AppBar().preferredSize.height,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(AppBar().preferredSize.height),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
