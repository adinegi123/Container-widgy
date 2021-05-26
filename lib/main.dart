


import 'package:container_widgy_app/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

        title: Text('flutter 21 days series week 1'),
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(

              height: 300,
              width: 300,

              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,

              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[
                  Colors.blue,
                  Colors.blueGrey
                    ]
                ),
                color: Colors.blue,
                ////////////adding shadow property to a container////////////////////////////////////
                boxShadow:[

                  BoxShadow(spreadRadius: 10,color: Colors.grey,blurRadius: 20,offset: Offset(0,10))//shadow
                ]
              ),
              child: Text('Lets start Learning',),



            ),
            SizedBox(height: 30,),
            MaterialButton(onPressed:()
                {
                   Navigator.push(context,MaterialPageRoute(builder: (context)
                  {
                    return SecondScreen();
                  }));
                }
                ,color: Colors.blue,
            child: Text('Second Screen',style: TextStyle(
              color: Colors.white,
                fontSize: 22

            ),)),
          ],
        ),
      ),


);
  }
}
