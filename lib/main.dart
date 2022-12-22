import 'package:rentcar/data_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final temaTeks = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Aplikasi Sewa Kendaraan',
      theme: ThemeData(
        //primarySwatch: Colors.deepOrange,
      ),
      home: DataUser(),
    );
  }
}
