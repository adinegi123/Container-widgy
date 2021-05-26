import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Second Screen'),
        iconTheme: IconThemeData(),
      ),
      body: Column(
        children: [
          Container(

            height: 400,
            width: 400,

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
        ],
      ),
    );
  }
}
