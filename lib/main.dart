import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

//class
import 'components/description.dart';
import 'components/pets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dogido',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHeader(),
    );
  }
}

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
              labelColor: Colors.red,
              tabs: [
                Tab(icon: Icon(Icons.pets)),
                Tab(icon: Icon(Icons.directions_transit)),
                
              ],
            );
        return DefaultTabController(
          length: 2,
              child: Scaffold(
              appBar: AppBar(
                  title: Center(
                child: Text("TinderDog"),
              ),
              
          ),
          body: TabBarView(children: [
            SectionPicture(),
            Description()
            ]),
          
          bottomNavigationBar: Container(
            decoration: BoxDecoration(color: Colors.white),
            child:tabBar
          ),
          ),
    );

  }
}

