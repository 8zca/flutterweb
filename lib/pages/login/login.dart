import 'package:flutter_web/material.dart';

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
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
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