import 'package:flutter/material.dart';
import 'package:medical2_app/Widget/custom_textfield.dart';

import '../constants.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  static String id='SignupScreen';
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold (
      backgroundColor: KMainColor,
      body: Form(
        key: _globalKey ,
        child: ListView(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery.of(context).size.height*.2,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                        image: AssetImage('images/icons/medical2icon.png')
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        'Medical Center',
                        style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontSize: 25
                        ),
                      ),
                    )

                  ],

                ),
              ),
            ),
            SizedBox(
              height: height*.05 ,
            ),
            CustomTextField(
                icon: Icons.perm_identity,
                hint: 'Enter your name'
            ),
            SizedBox(
              height: height*.02 ,
            ),
            CustomTextField(
                icon: Icons.email,
                hint: 'Enter your email'
            ),
            SizedBox(
              height: height*.02 ,
            ),
            CustomTextField(
                icon: Icons.lock,
                hint: 'Enter your password'
            ),
            SizedBox(
              height: height*.02 ,
            ),
            CustomTextField(
                icon: Icons.perm_identity,
                hint: 'Enter your birthday'
            ),
            SizedBox(
              height: height*.05 ,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black54,
                  onPressed: ()
                  {
                    if(_globalKey.currentState.validate())
                    {
                      //do something

                    }
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  )
              ),
            ),
            SizedBox(
              height: height*.01 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text('Do have an account ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {

                  },
                  child: Text('Login',
                      style:TextStyle(
                          color: Colors.cyan,
                          fontSize: 16
                      )
                  ),
                ),

              ],
            ),







          ],
        ),
      ),
    );
     }
}
