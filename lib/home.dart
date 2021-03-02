import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:interviewtwst/colors.dart';
import 'package:interviewtwst/fragments/accounts.dart';
import 'package:interviewtwst/fragments/cards.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color aText = primaryLight,cText = primaryDark,aLine=primary,cLine=Colors.transparent;

  Widget fragment=accountFragment();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Accounts",style: TextStyle(color: primaryDark),),
        centerTitle: false,
        leading: Container(
            padding: EdgeInsets.all(13),
            child: Image.asset("assets/menu.png"
            )
        ),
      ),
      body: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            //height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      aText=primary;
                      aLine=primaryDark;
                      cText=primaryDark;
                      cLine=Colors.transparent;

                      fragment= accountFragment();
                    });

                  },
                  child: Container(
                    width: 70,
                      child: Column(
                        children: [
                          Text("Accounts",style: TextStyle(color: aText,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Container(height: 3,color: aLine,)
                        ],
                      )
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      aText=primaryDark;
                      aLine=Colors.transparent;
                      cText=primary;
                      cLine=primaryDark;

                      fragment = cardFragment();
                    });
                  },
                  child: Container(
                      width: 70,
                      child: Column(
                        children: [
                          Text("Cards",style: TextStyle(color: cText,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Container(height: 3,color: cLine,)
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          fragment

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        backgroundColor: primary,
        child: Container(
          child: Center(child: Icon(Icons.add),),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: accent.withOpacity(0.2),
                spreadRadius: 7,
                blurRadius: 7,
                offset: Offset(3, 5),
              ),
            ],
          ),
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}