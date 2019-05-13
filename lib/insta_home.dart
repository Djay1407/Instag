import 'package:flutter/material.dart';
import 'package:instag/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 37.0,child: Image.asset("assets/instalogo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child:
         Icon(Icons.send),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),
            onPressed: (){},),
            IconButton(icon: Icon(Icons.search),
            onPressed: null,),
            IconButton(icon: Icon(Icons.add_box),
            onPressed: null,),
            IconButton(icon: Icon(Icons.favorite_border),
            onPressed: null,),
            IconButton(icon: Icon(Icons.person_outline),
            onPressed: null,),
          ],
        ),
      ),
    );
  }
}