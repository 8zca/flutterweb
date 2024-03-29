import 'package:flutter_web/material.dart';
import 'package:flutterweb/pages/login/login.dart';
import 'package:flutterweb/pages/home/home.dart';
import 'package:flutterweb/pages/table/my_table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => Login(title: 'Login'),
      '/table': (BuildContext context) => MyTable(title: 'Table'),
      '/home': (BuildContext context) => Home(title: 'Home'),
    };
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: routes
    );
  }
}
