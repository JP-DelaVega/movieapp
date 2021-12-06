import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';

class Homeregister extends StatefulWidget {
  @override
  _HomeregisterState createState() => _HomeregisterState();
}

class _HomeregisterState extends State<Homeregister> {
  @override
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  String _fname;
  String _lname;
  String _email;
  String _password;
  Widget build(BuildContext context) {
    double _sizee = MediaQuery.of(context).size.height ;
    return Scaffold(
      body: Center(
          child: Container(
        alignment: Alignment.center,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.lightBlue],
          ),
        ),
        child: SingleChildScrollView(
          
          child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 10.0, right: 10.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    //height: 555.0,
                 
                    height: _sizee*.95,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: _sizee*.1,
                                   
                                    child: Icon(
                                      Icons.person_add,
                                      size: _sizee*.08,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                    ),
                                  ),
                                ),
                                Container(
                                    child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: _sizee*.08),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 20.0),
                          child: Container(
                            child: Form(
                              key: _formKey,
                              child: Container(
                                //width: MediaQuery.of(context).size.width/2.0,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: ' First Name ',
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'First Name Required';
                                    } else if (value.length <= 5) {
                                      return 'Please enter Atleast 5 characters';
                                    }
                                  },
                                  onSaved: (String value) {
                                    _fname = value;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                            child: Form(
                              key: _formKey1,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: ' Last Name ',
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Last Name Required';
                                  } else if (value.length <= 5) {
                                    return 'Please enter Atleast 5 characters';
                                  }
                                },
                                onSaved: (String value) {
                                  _lname = value;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                            child: Form(
                              key: _formKey2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: ' Email Adrress ',
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Email Required';
                                  } else if (!RegExp(
                                          (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                                      .hasMatch(value)) {
                                    return 'Enter Valid Email';
                                  }
                                },
                                onSaved: (String value) {
                                  _email = value;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                            child: Form(
                              key: _formKey3,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: ' Password ',
                                ),
                                //autofocus: false,
                                obscureText: true,
                                validator: (String value) {
                                  if (value.length < 10) {
                                    return 'Please Enter Atleast 10 Characters';
                                  }
                                },
                                onSaved: (String value) {
                                  _password = value;
                                },
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0)),
                                  onPressed: () {
                                    Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                                  },
                                  child: const Text('Go back',
                                      style: TextStyle(fontSize: 25)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0)),
                                  onPressed: _validation,
                                  child: const Text('Sign Up',
                                      style: TextStyle(fontSize: 25)),
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      )),
    );
  }

  _validation() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(_fname);
    } else if (_formKey1.currentState.validate()) {
      _formKey1.currentState.save();
      print(_lname);
    } else if (_formKey2.currentState.validate()) {
      _formKey2.currentState.save();
      print(_email);
    } else if (_formKey3.currentState.validate()) {
      _formKey3.currentState.save();
      print(_password);
    }
    if (_formKey.currentState.validate() &&
        _formKey1.currentState.validate() &&
        _formKey2.currentState.validate() &&
        _formKey3.currentState.validate()) {
showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text('Done'),
              content: Text(
                'Account Created',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('Log in',style: TextStyle(fontSize: 15.0),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                )
              ],
            );
          });
    } 
    else {
      return;
    }
  }
}
