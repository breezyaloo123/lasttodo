import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String pseudo;
  String password;
  String password1;
  bool ischecked = false;
  final _final = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Text("Inscription"),
        actions: <Widget>[
          Icon(Icons.supervisor_account)
        ],
      ),
      body: Container(
        width: 500,
        height: 600,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple,Colors.cyan]),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Form(
              key: _final,
              child: ListView(
                children:<Widget>[
                  Image.asset("assets/signin.png"),
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: "Entrer votre pseudo",
                    icon: Icon(Icons.account_circle)
                  ),
                  validator: (value)
                  {
                    return value.length<5? "trop court ": null;
                  },
                  onChanged: (value)
                  {
                    pseudo = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Donner le password",
                    icon: Icon(Icons.vpn_key),
                  ),
                  validator: (value)
                  {
                    return value.length<6 ?"password too short":null;
                  },
                  onChanged: (value)
                  {
                    password = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirmer le password",
                    icon: Icon(Icons.vpn_key),
                  ),
                  validator: (value)
                  {
                    if(value.length<6 && password!=password1)
                    {
                      return "password too short and differents";
                    }
                    else if(value.length==0)
                    {
                      return "passwords too short";
                    }
                      return password != password1? "passwords are difference" : null;
                    },
                  onChanged: (value)
                  {
                    password1 = value.toString();
                  },
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: RaisedButton(
                    child: Text("S'inscrire"),
                    onPressed: ()
                    {
                      if(_final.currentState.validate())
                      {
                        if(ischecked == true)
                        {
                          
                        }
                      }
                    },
                  ),
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: ischecked,
                      onChanged: (value)
                      {
                        setState(() {
                          ischecked = ! ischecked;
                        });
                      },
                    ),
                    Text("Se souvenir de moi"),
                    Icon(Icons.restore)
                  ],
                )
                ]
              ),
            )
        ),
      );
  }
}