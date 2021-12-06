import 'package:flutter/material.dart';
import 'package:temp/details.dart';
import 'details.dart';

class Homemovie extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => Homedetails()),
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
                color: Colors.grey,
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
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.deepPurpleAccent, Colors.yellow[200]],
          ),
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: _sizee * .07,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                title: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.camera_roll,
                          color: Colors.white, size: _sizee * .035),
                      Text(
                        '  Movies  ',
                        style: TextStyle(
                            fontSize: _sizee * .035,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.camera_roll,
                          color: Colors.white, size: _sizee * .035),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                new List.generate(
                  15,
                  (index) => _listtile(
                      Icon(Icons.local_movies),
                      Text('Movvie ' + ((index + 1).toString())),
                      Text('Movie description'),
                      Icon(Icons.arrow_right)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
