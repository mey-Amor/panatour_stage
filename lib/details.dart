/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  static final String path = "lib/src/pages/hotel/details.dart";
  final String image = "assets/images/hotel.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: BoxDecoration(
              color: Colors.black26
            ),
            height: 400,
            child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    "Hotel Mouradi\nSousse",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        "8.4/85 AVIS",
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                                Text.rich(TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                                  ),
                                  TextSpan(
                                    text: "8 km du centre"
                                  )
                                ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),)
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text("\200 DT", style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                              Text("/par nuit",style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                              ),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          child: Text("Réserver ", style: TextStyle(
                            fontWeight: FontWeight.normal
                          ),),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0
                      ),),
                      const SizedBox(height: 10.0),
                      Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                      const SizedBox(height: 10.0),
                      Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text("DETAIL",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            
          )
        ],
      ),
    );
  }
}