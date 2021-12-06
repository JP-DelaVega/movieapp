import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'login.dart';

class Homeforgot extends StatefulWidget {
  @override
  _HomeforgotState createState() => _HomeforgotState();
}

class _HomeforgotState extends State<Homeforgot> {
  @override
  final _formKey = GlobalKey<FormState>();
  String _email;
  
  Widget build(BuildContext context) {
    double _sizee = MediaQuery.of(context).size.height ;
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.green, Colors.yellow[200]],
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              
                child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage('assets/forgot.png',),
                      //height: 190.0,
                      height: _sizee * .35,
                      alignment: Alignment.topCenter,
                    ),
                    height: _sizee * .35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Forgot Your \n Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: _sizee * .05,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "No Worries! Just enter the email you've used to\n register with us and we'll send you a reset link!",
                          style: TextStyle(
                              fontSize: _sizee * .025,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
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
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          decoration: InputDecoration(
                            helperText: ' ',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(),
                            hintText: ' Email Adrress ',
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Email Required';
                            }
                            if (!RegExp(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
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
                                borderRadius: new BorderRadius.circular(10.0)),
                            onPressed: _validation,
                            child: const Text('Send',
                                style: TextStyle(fontSize: 25)),
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }

  _validation() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      print(_email);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text('Sent'),
              content: Text(
                'Email Sent',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 15.0),
                  ),
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
    } else {
      return;
    }
  }
}
