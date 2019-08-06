import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => Login(title: 'Login'),
      '/home': (BuildContext context) => Home(title: 'Home')
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

class Login extends StatelessWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.cyan,
        elevation: 0        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 160,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1563699498778-aa8246fa5456?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2552&q=80'),
                  fit: BoxFit.cover
                )
              ),
              margin: EdgeInsets.only(bottom: 48),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(48),
                width: 480,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email'
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 24)
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password'
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 24),
                    ),
                    Container(
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Login', style: TextStyle(color: Colors.white)),
                        elevation: 0,
                        highlightElevation: 0,
                        hoverElevation: 0.1,
                        color: Colors.cyan,
                      )
                    )
                  ]
                )
              )
            )
          ]
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ParentWidgetState createState() => _ParentWidgetState(title: title);
}

class _ParentWidgetState extends State<Home> {
  _ParentWidgetState({Key key, this.title});
  final String title;
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.cyan,
        elevation: 0        
      ),
      body: Center(
        child: Container(
          child: TapboxB(
            active: _active,
            onChanged: _handleTapboxChanged,
          ),
        )
      )
    );
  }
}

// StatelessWidget継承
class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}