import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/farm-house.jpg'),
              Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Lokawisata baturaden',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'ProductSans',
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Open Everyday',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text(
                          '09.00 - 20.00',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Rp 17.000',
                          style: informationTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Berada di kaki Gunung Slamet, Baturaden menjadi destinasi wisata keluarga yang tidak membosankan'
                  'karena lingkungan alamnya yang indah dan asri, sehingga membuat liburan anda terasa natural dan segar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }

  var informationTextStyle = TextStyle(
    fontFamily: 'AvenirNext',
  );
}
