import 'package:flutter/material.dart';
import 'package:purwokertopintar/constants.dart';
import 'package:purwokertopintar/feature/detail/components/bookingButton.dart';
import 'package:purwokertopintar/feature/detail/components/price.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

class DetailsScreen extends StatelessWidget {
  final Lokawisata lokawisata;

  DetailsScreen({@required this.lokawisata});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(
        builder: (context) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(lokawisata.imageAsset),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                new Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      _locationName(name: lokawisata.location),
                      Price(
                        name: lokawisata.name,
                        numOfReviews: 24,
                        rating: 4.3,
                        price: lokawisata.ticketPrice,
                        onRatingChanged: (value) {},
                      ),
                      Text(
                        lokawisata.description,
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      BookingButton(
                        size: size,
                        press: () {
                          _showSnackBar(context, lokawisata);},
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  _locationName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }

  _showSnackBar(BuildContext context, Lokawisata lokawisata) {
    final SnackBar snackBar = new SnackBar(
      content: new Text(
          "Anda harus membayar tiket ${lokawisata.name} sebesar ${lokawisata.ticketPrice}"),
      backgroundColor: Colors.black,
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
