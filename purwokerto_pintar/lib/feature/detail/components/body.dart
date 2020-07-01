import 'package:flutter/material.dart';
import 'package:purwokertopintar/constants.dart';
import 'package:purwokertopintar/feature/detail/components/bookingButton.dart';
import 'package:purwokertopintar/feature/detail/components/price.dart';
import 'package:purwokertopintar/model/lokawisata.dart';

class Body extends StatelessWidget {
  final Lokawisata lokawisata;

  Body(this.lokawisata);

  @override
  Widget build(BuildContext context) {
     return Column(
      children: <Widget>[
        Image.network(lokawisata.imageAsset),
        Expanded(
          child: _detail(context, lokawisata),
        ),
      ],
    );
  }

  _detail(BuildContext context, Lokawisata item) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          _shopeName(name: item.location),
          Price(
            name: item.name,
            numOfReviews: 24,
            rating: 4.3,
            price: item.ticketPrice,
            onRatingChanged: (value) {},
          ),
          Text(
            item.description,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          BookingButton(
            size: size,
            press: () {
              _showSnackBar(context, item);
            },
          )
        ],
      ),
    );
  }

  _shopeName({String name}) {
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
      content: new Text("Anda harus membayar tiket ${lokawisata.name} sebesar ${lokawisata.ticketPrice}"),
      backgroundColor: Colors.blue,
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
}
