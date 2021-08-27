import 'package:flutter/material.dart';

import 'choice.dart';
import 'fun.dart';
import 'map.dart';

class HotelList extends StatefulWidget {
  HotelList({Key? key}) : super(key: key);

  _HotelListState createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff00a2ed);
  final secondary = Color(0xff0000FF);

  final List<Map> HotelLists = [
    {
      "name": "Djerba",
      
      "logoText":
          "https://cdn2.civitatis.com/tunez/djerba/galeria/header/camellos-laguna-djerba-tunez.jpg"
    },
    {
      "name": "Tozeur",
      
      "logoText":
          "https://cdn.getyourguide.com/img/tour/5d09482c277d9.jpeg/146.jpg"
    },
    {
      "name": "Douz",
      "logoText":
          "https://img.ev.mu/images/villes/53657/960x640.jpg"
    },
    {
      "name": "Gabes",
      "logoText":
          "https://femmesdetunisie.com/wp-content/uploads/2017/04/gabes-couv.jpg"
    },
    {
      "name": "Gbelli",
      "logoText":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlHFjR4hq-_uYpPRfnXUPuhs7w5POZhQ2xLw&usqp=CAU"
    },
    {
      "name": "Mednine",
      "logoText":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvIzHoP9LCxTEIAEmwrAWw_EuEcUBCdQts5dhdpG0d9iwOUzP2pv31kfShNPZ4-J03pBI&usqp=CAU"
    },
    {
      "name": "Tataouine",
      "logoText":
          "https://cdn2.webmanagercenter.com/wmc/wp-content/uploads/2018/12/star-wars-tataouine-isis-decor.jpg"
    },
    {
      "name": "Gafsa",
      "logoText":
          "https://cdn2.webmanagercenter.com/wmc/wp-content/uploads/2019/03/tunisie-gafsa-fest-sened.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DispoPlacesScreen()),
  );
        },
        child: Icon(Icons.map),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: HotelLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Destinations",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme.of(context).primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "Chercher une destination",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: secondary),
              image: DecorationImage(
                  image: NetworkImage(HotelLists[index]['logoText']),
                  fit: BoxFit.fill),
            ),
            child: InkWell(
                          onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ChoiceList()),
  );
}, ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  HotelLists[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                
              ],
            ),
          )
        ],
      ),
      
    );
    
  }
 
}