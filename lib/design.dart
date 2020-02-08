import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design"),
      ),
          body: Center(
            child: Stack(
        children: <Widget>[
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:BorderRadius.circular(20),
              ),
              child: Column(

                children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/todo.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Login"),
                      onPressed: (){},
                    ),
                    RaisedButton(
                      child: Text("Signin"),
                      onPressed: (){},
                    )
                  ],
                )
              ],),
            )
            
        ],
      ),
          ),
    );
  }
}