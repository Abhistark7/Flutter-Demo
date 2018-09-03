import 'package:flutter/material.dart';
import 'fancy_button.dart';
import 'fragments/fragment1.dart';
import 'fragments/fragment2.dart';
import 'fragments/fragment3.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Flutter'),
      routes: <String, WidgetBuilder>{
        '/search': (BuildContext context) => new SecondScreen(),
        '/exploreFragment' : (BuildContext context) => new FirstFragment(),
        '/savedFragment' : (BuildContext context) => new SecondFragment(),
        '/settingsFragment' : (BuildContext context) => new ThirdFragment(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped!
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

//tab Bar Example
class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer()),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
                  onPressed: () => Navigator.of(context).pushNamed('/search')
              ),
            ],
            title: Text('My Flutter'),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the Drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text("Drawer"),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('nav.jpg'), fit: BoxFit.fitWidth),

                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.blueAccent),
                  title: Text('Home'),
                  onTap: () =>
                      Scaffold.of(context).showSnackBar(new SnackBar(
                        content: new Text("Sending Message"),
                      ),
                      ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.explore,
                    color: Colors.blueAccent,
                  ),
                  title: Text('Explore'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/exploreFragment');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.save,
                    color: Colors.blueAccent,
                  ),
                  title: Text('Saved Items'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/savedFragment');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blueAccent,
                  ),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/settingsFragment');

                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              new CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: new SliverList(
                      delegate: new SliverChildListDelegate(
                        <Widget>[
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                          const Text('I\'m dedicating every day to you'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('Domestic life was never quite my style'),
                          const Text('When you smile, you knock me out, I fall apart'),
                          const Text('And I thought I was so smart'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

