import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/car_detail.dart';

class DetailMobil extends StatefulWidget{
  final CarDetail car;
  //final String text;

  DetailMobil({required this.car});

  @override
  _DetailMobilState createState() => _DetailMobilState();
}

class _DetailMobilState extends State<DetailMobil> {
  String _rentedText = 'Rent now';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.car.gambarMobil.map((mbl){
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset(mbl)
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0XFFDA4453),Color(0XFF89216B)]
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  widget.car.nama,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    textStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                ),
              )
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget> [
                    Row(
                      children: <Widget> [
                        Icon(Icons.directions_car),
                        SizedBox(width: 25),
                        Text(
                          widget.car.transmisi,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget> [
                        Icon(Icons.account_circle),
                        SizedBox(width: 25),
                        Text(
                          widget.car.kapasitas,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 25),
                        Text(
                          widget.car.harga,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: (){
                setState(() {
                  _rentedText = 'Rented';
                });
              },
              child: Text(
                _rentedText,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}