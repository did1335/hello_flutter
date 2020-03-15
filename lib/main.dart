import 'package:flutter/material.dart';
var i = 1;

void main() => runApp(MaterialApp(
  home: Home(),
));

//Home Widget
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[300],
        ),

        body: Column(
          children: <Widget>[
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                Text('Flutter:',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
                Image(
                  image: AssetImage('assets/flutter.jpg'),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('Hello Flutter',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.lightBlue[600],
                ),
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: (){
            print('click ' + i.toString() + ' times');
            i++;
          },
        ),
      );
  }
}
