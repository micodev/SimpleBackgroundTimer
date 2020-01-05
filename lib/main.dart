import 'package:alarm_manager/notificationManager.dart';
import 'package:flutter/material.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';

NotificationManager n = new NotificationManager();

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
  runApp(MyApp());
}

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
  initState()
  {
    super.initState();
    AndroidAlarmManager.oneShotAt(DateTime.now().add(Duration(seconds: 5)), 0, notificate, exact: true, allowWhileIdle: true, wakeup: true, rescheduleOnReboot: true, alarmClock: true);
  }

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

      )
    );
  }
}

void notificate()
{
  n.initNotificationManager();
  n.showNotificationWithDefaultSound("MyTitle", "Body");
  return;
}