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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _floatingActBtn();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _floatingActBtn() {

    showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text('This is the modal bottom sheet. Tap anywhere to dismiss.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 24.0,
            ),
          ),
        ),
      );
    });
  }

}
