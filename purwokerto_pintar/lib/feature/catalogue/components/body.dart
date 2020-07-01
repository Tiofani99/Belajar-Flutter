import 'package:flutter/material.dart';
import 'package:purwokertopintar/components/search_box.dart';
import 'package:purwokertopintar/constants.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

import 'MyGridView.dart';

class Body extends StatelessWidget {
  final List<Lokawisata> _list = Lokawisata.allCities();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(child: getHomePageBody(context))
        ],
      ),
    );
  }

  getHomePageBody(BuildContext context) {
    return new MyGridView(listLokawisata: _list);
  }
}
