
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical2_app/Screens/signup_screen.dart';
import 'package:medical2_app/Widget/custom_textfield.dart';
import 'package:medical2_app/constants.dart';
class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold (
      backgroundColor: KMainColor,
      body: ListView(
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
            height: height*.1 ,
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
            height: height*.05 ,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                color: Colors.black54,
                onPressed: () {  },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            ),
          ),
          SizedBox(
            height: height*.05 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget> [
             Text('Don\'t have an account ?',
             style: TextStyle(
               color: Colors.black,
               fontSize: 16
             ),
             ),
             GestureDetector(
               onTap: ()
               {
                 Navigator.pushNamed(context,SignupScreen.id);
               },
               child: Text('Sign up',
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
    );
  }
}


