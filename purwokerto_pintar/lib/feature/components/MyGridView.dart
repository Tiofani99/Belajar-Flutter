import 'package:flutter/material.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

class MyGridView extends StatelessWidget {
  final List<Lokawisata> allCities;
  MyGridView({Key key, this.allCities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10.0),
      children: _getGridViewItems(context),
    );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = new List<Widget>();
    for (int i = 0; i < allCities.length; i++) {
      var widget = _getGridItemUI(context, allCities[i]);
      allWidgets.add(widget);
    };
    return allWidgets;
  }

  // Create individual item
  _getGridItemUI(BuildContext context, Lokawisata item) {
    return new InkWell(
        onTap: () {
          _showSnackBar(context, item);
        },
        child: new Card(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.network(
                item.imageAsset,
                fit: BoxFit.fill,
                height:100.0,
              ),
              new Expanded(
                  child: new Center(
                      child: new Column(
                        children: <Widget>[
                          new Text(
                            item.name,
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )))
            ],
          ),
          elevation: 2.0,
          margin: EdgeInsets.all(5.0),
        ));
  }

  /// This will show snackbar at bottom when user tap on Grid item
  _showSnackBar(BuildContext context, Lokawisata item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("Tiket masuk ${item.name}  ${item.ticketPrice}"),
      backgroundColor: Colors.black,
    );

    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}