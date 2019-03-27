import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: TutorialHome(),
    ));
}

class MyAppBar extends StatelessWidget {

  MyAppBar({this.title});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded (
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}


class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example Title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(child: Center(
            child: Text('Hello World'),
          ),)
        ],
      ),
    );
  }

}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Hello World'),
          ),
          MyButton(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}

