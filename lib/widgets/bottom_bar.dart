//import 'dart:html';

import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return BottomAppBar(
        color: Colors.white,
        child: Container(
          height: deviceSize.height*0.35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(onPressed: () {},
                   icon: Icon(Icons.search)
                   ),
                   Text('Test')
                ],
              )
            ],
          ),
        ),
      );
  }
}