import 'package:flutter/material.dart';
import 'dart:async';

class Login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget {
  
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  final  _userEmail     = TextEditingController();
  final  _userPassword  = TextEditingController();
  bool isLoading        = false;



 @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _userEmail.dispose();
    _userPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/image-login.jpg"), fit: BoxFit.cover,),
          ),
        ),
        isLoading ? Center( child: CircularProgressIndicator() )
        :  
        new SingleChildScrollView(
         reverse: true,
         child: new Center(
          child: new Container(
            width: 300.0,
            child: new Center(
              child: new Column(
                children: <Widget>[
                    new Padding(padding: EdgeInsets.only(top:200.0)),
                    
                    new TextFormField(
                        controller: _userEmail,
                        style: new TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: new TextStyle(
                            color: Colors.white,
                            ),
                          contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          fillColor: Colors.white, 
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      
                    ),

                    new Padding(padding: EdgeInsets.only(top:20.0)),

                    new TextFormField(
                        controller: _userPassword,
                        style: new TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: new TextStyle(color: Colors.white),
                          fillColor: Colors.white, 
                          contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                    ),
                    
                    new Padding(padding: EdgeInsets.only(top: 20.0)),
                    new RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        if(_userEmail.text == 'mugypleci@gmail.com' && _userPassword.text == '123'){
                         
                        } else {
                         print(false);
                        }
                      },
                      child: Text("Sign In"),
                    ),
                         
                ],
                
              ),
              ),
            ),
            
          ),
        )
      ],
   
    );

    
  }
}


//  Container(
//   decoration: BoxDecoration(
//       image: DecorationImage(
//               image: AssetImage("assets/images/image-login.jpg"), 
//       fit: BoxFit.cover
//     ),
//   ),
// ),