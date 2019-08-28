import 'package:flutter_web/material.dart';

class MyTable extends StatelessWidget {
  MyTable({Key key, this.title}) : super(key: key);

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
              child: Table(
                
                columnWidths: <int, TableColumnWidth>{
                  0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                  1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                  2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                  3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                },
                children: [
                  TableRow(decoration: BoxDecoration(), children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      child: Text('#')
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      child: Text('Date')
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      child: Text('Amount')
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      child: Text('Status')
                    )
                  ])
                ],
              )
            )
          ]
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}