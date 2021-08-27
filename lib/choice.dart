import 'package:flutter/material.dart';

import 'categories.dart';

class ChoiceList extends StatefulWidget {
  ChoiceList({Key? key}) : super(key: key);

  _ChoiceListState createState() => _ChoiceListState();
}

class _ChoiceListState extends State<ChoiceList> {
  final TextStyle dropdownMenuItem =
      TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xff00a2ed);
  final secondary = Color(0xff0000FF);

  final List<Map> ChoiceLists = [
    {
      "name": "Liste des hotels",
      
      "logoText":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWG8_-9_WNVrSKGIqJPEZjDLfK94WWg_oCNw&usqp=CAU"
    },
    {
      "name": "Liste des cafés/restaurents",
      
      "logoText":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREsgtraOBf7tbF86C0vF7D7qAOkXCbRNRVbQ&usqp=CAU"
    },
    {
      "name": "Liste des activités",
      "logoText":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3ZXPe55o0qUvNpS6HfA3qd6IBm53oiz9ijg&usqp=CAU"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    itemCount: ChoiceLists.length,
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
                        "Vous trouvez ici",
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
              )]))));
              
      
    
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  image: NetworkImage(ChoiceLists[index]['logoText']),
                  fit: BoxFit.fill),
            ),
             child: InkWell(
                          onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CartegoryePage()),
  );
}, ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  ChoiceLists[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                 
                ),
              ],
            ),
          )
        ],
      ),
    );
   
  }
}