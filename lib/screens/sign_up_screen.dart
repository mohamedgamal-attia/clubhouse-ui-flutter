import 'package:flutter/material.dart';
import 'package:trivi_app/components/components.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
              "Sign Up",
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                DefaultTextField(
                  pricon:(Icons.email_outlined),
                  hintText: "enter your email",

                ),
                SizedBox(height: 5,),
                Text(
                  "Username",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                TextButton(
                  onPressed: (){},
                  child: Icon(Icons.check_box_outlined),
                ),
                Text(
                  "By creating an account, you agree to our\n"
                      "Term & Conditions",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 357,
            height: 20,
          ),

          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: defaultRaisedButton(
                      text: "Sign Up",
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
    );;
  }
}
