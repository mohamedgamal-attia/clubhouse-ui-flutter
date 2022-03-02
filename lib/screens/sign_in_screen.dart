import 'package:flutter/material.dart';
import 'package:trivi_app/components/components.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 357,
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Sign In",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            width: 357,
            height: 30,
          ),
          DefaultButton(
            textcolor: Colors.white,
            icon: Icons.facebook,
            text: "Sign in with Facebook"
          ),
          SizedBox(
            width: 357,
            height: 20,
          ),
          DefaultButton(
            color:  Color.fromRGBO(241, 67, 54, 1),
              textcolor: Colors.white,
              icon: Icons.g_translate,
              text: "Sign in with Facebook"
          ),
          SizedBox(
            width: 357,
            height: 20,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child:  Image.asset('assets/images/logo.png')
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username of Email",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                DefaultTextField(
                    pricon:(Icons.person_pin),
                  hintText: "enter username or email",

                ),
                SizedBox(height: 5,),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                DefaultTextField(
                    pricon:(Icons.lock_open),
                  hintText: "enter password",
                  suf_icon: true,
                  suficon: Icons.remove_red_eye_outlined
                ),
                SizedBox(height: 15,),
              ],

            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child:  defaultRaisedButton(
                    text: "Sign In",
                  ),
                ),
                SeparatorLine(),
              ],
            ),
          ),
          SizedBox(height: 15,),
          AlternativeButtons(),
        ],
      ),
    );
  }
}
