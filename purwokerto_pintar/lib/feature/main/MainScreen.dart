import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:purwokertopintar/model/Category.dart';
import '../catalogue/CatalogueScreen.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Purwokerto".toUpperCase(),
          style: TextStyle(fontFamily: "ProductSans"),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: categoryList.map((category){
          return FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CatalogueScreen(category: category,);
              }));
            },
            child: new Card(
              color: Colors.white,
              margin: new EdgeInsets.all(10.0),
              child: new Container(
                height: 100.0,
                width: double.infinity,
                child: new Stack(
                  children: <Widget>[
                    Image.asset(
                        category.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: new Color(0x80000000),
                    ),
                    new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            category.name,
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontFamily: 'ProductSans'),
                          ),
                          Text(
                            "${category.postCount} posts",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: "ProductSans"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var categoryList = [
  Category(
  id: 1,
    name: 'Pariwisata',
    image: 'images/travel.jpg',
    postCount: 10,
  ),
  Category(
    id: 2,
    name: 'Masakan Lokal',
    image: 'images/cooking.jpg',
    postCount: 5,
  ),
];