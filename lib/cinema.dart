import 'package:flutter/material.dart';
import 'login.dart';
import 'movies.dart';
import 'movies.dart';

class Homecinema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _listtile(
      Icon icon,
      Text titlee,
      Text sub,
      Icon trail,
    ) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
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
          child: GestureDetector(
            child: ListTile(
              leading: icon,
              title: titlee,
              subtitle: sub,
              selected: true,
              trailing: trail,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homemovie()),
              );
            },
          ),
        ),
      );
    }

    _list(Image im) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Opacity(
          opacity: .85,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            child: Container(
                color: Colors.green[200],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: im,
                )),
          ),
        ),
      );
    }

    double _sizee = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurpleAccent, Colors.green[200]],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
               
                backgroundColor: Colors.transparent,
                expandedHeight: _sizee * .30,
                flexibleSpace: FlexibleSpaceBar(
                    title: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        child: Row(
                          
                          children: <Widget>[
                            Icon(Icons.tv,color: Colors.white,size:_sizee*.04),
                            Text(
                              '  Cinema  ',
                              style: TextStyle(
                                fontSize: _sizee*.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                                  
                            ),
                            Icon(Icons.tv,color: Colors.white,size:_sizee*.04 ),
                          ],
                        ),
                      
                    ),
                    background: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: new List.generate(
                        5,
                        (index) => _list(Image.asset('assets/flatlogo.png')),
                      ),
                    )),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: _sizee*.03, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  )
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  new List.generate(
                    15,
                    (index) => _listtile(
                        Icon(Icons.local_movies),
                        Text('Cinema' + ((index + 1).toString())),
                        Text('Cinema description'),
                        Icon(Icons.arrow_right)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
