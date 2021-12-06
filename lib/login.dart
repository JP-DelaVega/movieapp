import 'package:flutter/material.dart';
import 'cinema.dart';
import 'movies.dart';
import 'register.dart';
import 'forgot.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  bool invisible = true;
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  @override
  String _user;
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
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.deepPurpleAccent, Colors.green],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/flatlogo.png'),
                      //height: 170.0,
                      height: _sizee*.30,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //height: 390,
                    height: _sizee*.67,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Container(
                            alignment: Alignment.topCenter,
                              child: Text(
                            'User Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: _sizee*.08),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email: ',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: _sizee*.025),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                            child: Form(
                              key: _formKey,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: ' Username ',
                                  prefixIcon: Icon(Icons.vpn_key),
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Username Required';
                                  }
                                  
                                },
                                onSaved: (String value) {
                                  _user = value;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password: ',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: _sizee*.025),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 8.0, top: 8.0),
                          child: Container(
                            child: Form(
                              key: _formKey1,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black,
                                    ),
                                    onTap: inContact,
                                  ),
                                  hintText: ' Password ',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                ),
                                autofocus: false,
                                obscureText: invisible,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Password Required';
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
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Container(
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                        fontSize: _sizee*.025,
                                        color: Colors.blue),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homeforgot()),
                                  );
                                  print('forget');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: _sizee*.05,
                                width: _sizee*.16,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0)),
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Text('Login',
                                      style: TextStyle(fontSize: _sizee*.03)),
                                  onPressed: _validation,
                                  
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Dont have an account?',
                                    style: TextStyle(fontSize: _sizee*.025),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    child: Text(' Register',
                                        style: TextStyle(
                                            fontSize: _sizee*.025,
                                            decoration: TextDecoration.underline,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homeregister()),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //wrap your toggle icon in Gesture Detector
  void inContact() {
    setState(() {
      if (invisible == false) {
        invisible = true;
      } else {
        invisible = false;
      }
    });
  }

  _validation() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(_user);
    } else if (_formKey1.currentState.validate()) {
      _formKey1.currentState.save();
      print(_password);
    } 
     if (_formKey1.currentState.validate() &&
        (_formKey.currentState.validate())) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homecinema()),
      );
    } else {
      return;
    }
  }
}
