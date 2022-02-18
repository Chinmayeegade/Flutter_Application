import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo.png',
              height: 400,
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  //List<String> _titles = ["Home", "Profile", "Shop"];
  List<Widget> _items = [
  GridView.count(
  primary: false,
  padding: const EdgeInsets.all(10),
  crossAxisSpacing: 8,
  mainAxisSpacing: 8,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/a.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/b.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/c.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/d.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/e.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/f.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/g.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/h.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/i.png"),
    ),
    Container(
      padding: const EdgeInsets.all(10),
      child: Image.asset("assets/images/j.png"),
    ),
  ],
  ),
  ListView(
  padding: EdgeInsets.all(5),
  children: <Widget>[
  Container(
  height:100,
  padding: const EdgeInsets.all(8),
  color: Colors.teal[200],
  child: Text('Dishes to Try Around the World',textAlign: TextAlign.center,
  style: TextStyle(fontSize: 40, color: Colors.red),)
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[300],
  child: Text("San Francisco: Coi - At Coi, visionary chef Daniel Patterson (an F&W Best New Chef 1997) idolizes produce in dishes like this upside-down tomatoes tart, in which quickly charred, peeled cherry tomatoes sit on a bed of pesto and are topped with a tomato puree (made in a whipped-cream dispenser) and a crispy olive tart shell."),
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[400],
  child: Text("Errenteria, Spain: Mugaritz - A year's worth of experimentation went into Andoni Luis Aduriz's voluminous edible bubbles, made with sun-ripened berries and beetroot. The Michelin-two-starred Mugaritz was destroyed by a kitchen fire in February 2010, but Aduriz reopened it in June."),
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[500],
  child: Text("Paris: Pierre Gagnaire - Legendary French chef Pierre Gagnaire gives the meringue a divine twist. He adds water to the classic egg white and sugar mixture to make them ethereally light—a discovery by molecular gastronomist Hervé This—and shapes them into gorgeous-looking sticks."),
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[600],
  child: Text("New York City: Le Bernardin - Seafood genius Eric Ripert juxtaposes the high and low in this playful dish of white tuna poached in olive oil, topped with delicate sea beans, crispy potato chips and a light red-wine béarnaise sauce."),
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[700],
  child: Text("Chicago: Alinea - At Alinea in Chicago, the always-forward-thinking Grant Achatz (an F&W Best New Chef 2002) serves hearts of palm stuffed with five different fillings—from vanilla pudding to truffle-pumpernickel puree—on five separate pedestals."),
  ),
  Divider(),
  Container(
  padding: const EdgeInsets.all(8),
  color: Colors.teal[800],
  child: Text("Yountville, California: French Laundry - This dish by chef de cuisine Timonthy Hollingsworth at the renowned French Laundry combines carefully shaved frozen foie gras with pickled huckleberries and blossoms from the restaurant's garden."),
  ),
  ],
  ),
    SafeArea(child: Center(
      child: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          Text(
            "We're Always Ready to Help!",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 5.0,
          ),
          Text(
            'Mail us',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.green,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 5.0,
          ),
          RaisedButton(
            onPressed: _sendingMails,
            child: Text('xyz@example.com'),
            textColor: Colors.black,
            padding: const EdgeInsets.all(5.0),
          ),
          Container(
            height: 5.0,
          ),
          Text(
            'Text Us',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.green,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 5.0,
          ),
          RaisedButton(
            onPressed: _sendingSMS,
            child: Text('1234567890'),
            textColor: Colors.black,
            padding: const EdgeInsets.all(5.0),
          ),
        ],
      ),
    ),
    ),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Food Addict"),
      ),
      body:Center(
          child: IndexedStack(
              index: _selectedIndex,
              children: _items
          )//_items.elementAt(_index),
      ),
      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav()
  {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank),
          label: 'Food',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Fun Facts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          label: 'Contact',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
    );
  }

  void _onTap(int index)
  {
    _selectedIndex = index;
    setState(() {

    });
  }
}

_sendingSMS() async {
  const url = 'sms:1234567890';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sendingMails() async {
  const url = 'mailto:xyz@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}