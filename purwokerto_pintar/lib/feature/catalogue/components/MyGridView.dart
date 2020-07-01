import 'package:flutter/material.dart';
import 'package:purwokertopintar/constants.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

class MyGridView extends StatelessWidget {
  final List<Lokawisata> allCities;

  MyGridView({Key key, this.allCities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .85,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.all(10.0),
      children: _getGridViewItems(context),
    );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = new List<Widget>();
    for (int i = 0; i < allCities.length; i++) {
      var widget = _gridItemLokawisata(context, allCities[i]);
      allWidgets.add(widget);
    }
    return allWidgets;
  }

  _gridItemLokawisata(BuildContext context, Lokawisata item) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kBackgroundColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _showSnackBar(context, item);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.network(item.imageAsset),
                  Spacer(),
                  Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showSnackBar(BuildContext context, Lokawisata item) {
    final SnackBar snackBar = new SnackBar(
      content: new Text("Tiket masuk ${item.name}  ${item.ticketPrice}"),
      backgroundColor: Colors.blue,
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
}
