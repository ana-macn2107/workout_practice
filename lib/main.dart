//import 'dart:html';

import 'dart:html';

import 'package:charles_design/widgets/pending_item_card.dart';
import 'package:flutter/material.dart';
import './widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          splashColor: Colors.red,
          primarySwatch: Colors.blue,
          fontFamily: 'SF Pro'),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceSizeHeight = MediaQuery.of(context).size.height;
    var deviceSizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 0.048 * deviceSizeWidth),
              width: deviceSizeWidth * 0.854,
              height: deviceSizeHeight * 0.087,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Buenos Días',
                          style:
                              TextStyle(color: Theme.of(context).splashColor)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Usuario',
                          style: TextStyle(
                              color: Theme.of(context).splashColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'HealthPy Test Clinic',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  )
                ],
              )),
          Container(
            width: deviceSizeWidth * 0.8533,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text('Pendientes'),
                    Icon(
                      Icons.chevron_right_outlined,
                    ),
                  ],
                ),
                PendingItemCard()
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
