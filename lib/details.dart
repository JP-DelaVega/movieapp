import 'package:flutter/material.dart';

class Homedetails extends StatelessWidget {
  Widget build(BuildContext context) {
    double _sizee = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Movie title'),backgroundColor: Colors.lightGreen,),
        body: Container(
          alignment: Alignment.center,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.lightBlue],
          ),
        ),
          child: ListView(children: <Widget>[
      Container(
          child: Image.asset('assets/flatlogo.png'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -15.0),
                  blurRadius: 10.0),
            ],
          ),
      )
    ]),
        ));
  }
}
