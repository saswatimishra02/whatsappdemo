import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Whatsapp'),
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Whatsapp",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: "CHATS"),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://justice.org.au/wp-content/uploads/2017/08/avatar-icon.png'),
                ),
                title: Text('saswati'),
                subtitle: Text("message"),
                trailing: Text("10.14 pm "),
              ),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
