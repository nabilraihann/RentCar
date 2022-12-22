import 'package:rentcar/list_car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataUser extends StatefulWidget{
  @override
  _DataUserState createState() => _DataUserState();
}
class _DataUserState extends State<DataUser>{
  String _namaUser = '';
  String _passwordUser = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0XFFDA4453),Color(0XFF89216B)]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget> [
                            Expanded(
                              child: Column(
                                children: <Widget> [
                                  SizedBox(height: 10),
                                  Text(
                                    ' RentCar',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Material(
                                        elevation: 10,
                                        shadowColor: Colors.black,
                                        borderRadius: BorderRadius.circular(25),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Username',
                                            fillColor: Colors.grey.shade50.withOpacity(0.5),
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black,width: 1),
                                                borderRadius: BorderRadius.circular(25)
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black,width: 1),
                                                borderRadius: BorderRadius.circular(25)
                                            ),
                                          ),
                                          onChanged: (String value){
                                            setState(() {
                                              _namaUser = value;
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Material(
                                          elevation: 10,
                                          shadowColor: Colors.black,
                                          borderRadius: BorderRadius.circular(25),
                                          child:TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Password',
                                              filled: true,
                                              fillColor: Colors.grey.shade50.withOpacity(0.5),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black,width: 1),
                                                  borderRadius: BorderRadius.circular(25)
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black,width: 1),
                                                  borderRadius: BorderRadius.circular(25)
                                              ),
                                            ),
                                            onChanged: (String value){
                                              setState(() {
                                                _passwordUser = value;
                                              });
                                            },
                                          )
                                      )
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                      padding:const EdgeInsets.only(left: 10,right: 10),
                                      child: SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.3,
                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                return MainScreen();
                                              }));
                                            },
                                            child: Text('Log in'),
                                            style: ElevatedButton.styleFrom(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15)
                                                )
                                            ),
                                          )
                                      )
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              )
            ),
          )
        )
      )
    );
  }
}