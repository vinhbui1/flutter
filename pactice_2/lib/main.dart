import 'package:flutter/material.dart';
import './index.dart';
import './menu1.dart';
import './menu2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  int _currentIndex = 0;

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  //navigate between mutiple pages

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: DefaultTabController(
          length: 3,
         child: new Scaffold(
appBar: AppBar(
                title: Text('Flutter layout demo'),
               
              ),
          body: TabBarView(
                children: <Widget>[Menu1(),Index(),  Menu2()],
              ),
          bottomNavigationBar: new TabBar(
         
            tabs: [
              Tab(
                 icon: new Icon(Icons.playlist_add),
                 text: "Car",
              ),
              Tab(
                icon: new Icon(Icons.person),
                text: 'My Profile',
              ),
              Tab(
                icon: new Icon(Icons.mail),
                text: 'My Inboxs',
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
        ),
        ));
  }
}
