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
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, canvasColor: Colors.transparent),
    );
  }
}

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  PageController _controller;
  String title = "iChat";

  @override
  void initState() {
    _controller = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      iconPosition: BackdropIconPosition.action,
      title: Text(title, style: TextStyle(fontSize: 24)),
      backLayer: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: CircleAvatar(
                maxRadius: 80,
                backgroundImage: NetworkImage(
                    "https://scontent.falg3-1.fna.fbcdn.net/v/t1.0-9/62644831_476388506431424_8919529652150599680_n.jpg?_nc_cat=100&_nc_eui2=AeGQUAhxP_0uFi2zf4EKPBMdW0M2R5EPK120p9fOaQ1cAMth_0jEx5dUNwzdz3Ux6VyMqfTrNDFt8Q4BzUfU4yczX7mwBlYZQOJWvrJ9_TN7wQ&_nc_ht=scontent.falg3-1.fna&oh=ca200be4d7036b85ba0d3dc4b4709cca&oe=5DC4D3CD"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 2),
              child: Text(
                "Abdelkader Sebihi",
                style: TextStyle(
                    fontSize: 26, color: Colors.white70.withOpacity(.9)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2, bottom: 8),
              child: Text(
                "abdelkadersebihi@gmail.com",
                style: TextStyle(
                    fontSize: 12, color: Colors.white70.withOpacity(.7)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 4),
              child: Text(
                "Bio",
                style: TextStyle(
                    fontSize: 16, color: Colors.white70.withOpacity(.4)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              margin: EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                "Hans Muller and Mary Xia created Backdrop, a widget that implements the Material Backdrop component, and used in the Flutter Gallery..",
                style: TextStyle(
                    fontSize: 12, color: Colors.white70.withOpacity(.7)),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              
              child: FlatButton(
                child: Text("Signout",style: TextStyle(color: Colors.white.withOpacity(.6),fontSize: 16),),
                onPressed: (){

                },
              ),
            )
          ],
        ),
      )),
      frontLayer: Center(
          child: Container(
        child: PageView(
          controller: _controller,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
          ],
        ),
      )),
    );
  }
}
