import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: 'Flutter Demo',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text(widget.title),
      ),
      body: Container
      (
        child: Row
        (
          children: <Widget>
          [
            TextField
            (
              decoration: InputDecoration
              (
                border: InputBorder.none,
                hintText: "07.30pm"
              )
            ),
            FlatButton
            (
              child: Text("Start"),
              onPressed: () => createTimer(),
            )
          ]
        ),
      ),
    );
  }

  void createTimer()
  {
    /*TODO:
    1) Set timer to finish at 07.30pm
    2) Create a background process that can run even if the app is closed
    3) Run the timer
    4) When timer is finished push a notification*/
  }
}
