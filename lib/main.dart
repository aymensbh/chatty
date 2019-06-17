import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Router(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  PageController _controller;
  String title="iChat";

  @override
  void initState() {
    _controller = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      iconPosition: BackdropIconPosition.leading,
      title: Text(title, style: TextStyle(fontSize: 24)),
      backLayer: Center(
          child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ))),
            child: FlatButton(
              child: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                _controller.animateToPage(2,
                    curve: Curves.ease, duration: Duration(microseconds: 200));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ))),
            child: FlatButton(
              child: Text(
                "Friends",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                _controller.animateToPage(0,
                    curve: Curves.ease, duration: Duration(microseconds: 200));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ))),
            child: FlatButton(
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                _controller.animateToPage(1,
                    curve: Curves.ease, duration: Duration(microseconds: 200));
              },
            ),
          ),
        ],
      )),
      frontLayer: Center(
          child: Container(
        child: PageView(
          controller: _controller,
          children: <Widget>[
            Container(),
            Container(),
            Container(),
          ],
        ),
      )),
    );
  }
}
