import 'package:flutter/material.dart';
import 'package:trivi_app/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState(){
  super.initState();
  _navigatetohome();
}

_navigatetohome()async{
  await Future.delayed(Duration(seconds: 3),
          (){},
  );
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context)=>SignInScreen(),
      )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 255, 250, 0.5),
                      Color.fromRGBO(0, 255, 250, 1),
                    ],

                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)),
          ),
          CircleAvatar(
           radius: 100,
            backgroundColor: Colors.white,
            child:  CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100,
                child: Image.asset('assets/images/button.png'),
            ),
          ),
        ],
      ),
    );
  }
}
