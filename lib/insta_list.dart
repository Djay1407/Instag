import 'package:flutter/material.dart';
import 'package:instag/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize =MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index)=> index==0?SizedBox(
        child: InstaStories(),
        height: deviceSize.height*0.2,
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("http://1.bp.blogspot.com/__UQSIjH59iA/TB9iWBgbUNI/AAAAAAAAEKE/JDV8QsFrXis/s1600/Angelina+Jolie+Beautiful+Face+980x980+Pixels.jpg"),
                        )
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text("veronica12",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                IconButton(icon: Icon(Icons.more_vert),onPressed: null,)
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.network("https://images.alphacoders.com/687/687005.jpg",fit: BoxFit.cover,),
          ),
          Padding(padding: const EdgeInsets.all(16.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(FontAwesomeIcons.heart),
            SizedBox(width: 16.0,),
            Icon(FontAwesomeIcons.comment),
            SizedBox(width: 16.0,),
            Icon(FontAwesomeIcons.paperPlane),
            SizedBox(width: 16.0,),
            Icon(FontAwesomeIcons.bookmark),
          ],
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("Liked by roastrs, MUJ and 798,645 others",style: TextStyle(fontWeight: FontWeight.bold),),),
          
        ],
      ),
      
    );
  }
}