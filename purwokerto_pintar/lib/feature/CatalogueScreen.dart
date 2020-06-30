import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:purwokertopintar/constants.dart';
import 'package:purwokertopintar/feature/components/body.dart';
import 'package:purwokertopintar/model/Category.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

class CatalogueScreen extends StatelessWidget {
  final Category category;

  CatalogueScreen({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Lokawisata'),
      actions: <Widget>[
      ],
    );
  }
}
