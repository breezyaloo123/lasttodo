import 'package:flutter/material.dart';
import 'package:lasttodo/models/signin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Login Page"),
        actions: <Widget>[
          Icon(Icons.vpn_key)
        ],
      ),
      body: Container(
        width: 500,
        height: 600,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple,Colors.blue]),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListView(
          children: <Widget>[
            Image.asset("assets/login.png"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Entrer votre pseudo",
                icon: Icon(Icons.account_circle),
              ),
              onChanged: (value)
              {

              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Entrer le mot de pass",
                icon: Icon(Icons.vpn_key),
              ),
              onChanged: (value)
              {

              },
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 10,
              height: 48,
              child: RaisedButton(
                child: Text("Login"),
                onPressed: ()
                {

                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Creer un compte en cliquant "),
                    Icon(Icons.add_to_home_screen),
                  ],
                ),
                RaisedButton(
                  child: Text("Sign in"),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                  },
                )
              ],
            )
            
          ],
        ),

        
      ),
    );
  }
}