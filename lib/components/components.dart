import 'package:flutter/material.dart';

Widget DefaultButton({
  @required Color color = Colors.blue,
  Color textcolor = Colors.white,
  @required String text = "",
  @required IconData icon = Icons.facebook,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      color: color,
      textColor: textcolor,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: textcolor,
          ),
          SizedBox(
            width: 5,
          ),
          Text("$text"),
        ],
      ),
    ),
  );
}

Widget DefaultTextField({
  @required IconData pricon = Icons.facebook,
  @required String hintText = "",
  @required String lableText = "",
  IconData suficon = Icons.facebook,
  bool suf_icon = false,
  @required TextInputType type = TextInputType.text,
  @required iconcolor = Colors.black,
}) {
  return TextFormField(
    keyboardType: type,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      labelText: '$lableText',
      hintText: '$hintText',
      labelStyle: TextStyle(color: iconcolor),
      icon: Icon(
        pricon,
        color: iconcolor,
      ),
      suffixIcon: suf_icon
          ? Icon(
              suficon,
              color: iconcolor,
            )
          : null,
    ),
  );
}

Widget defaultRaisedButton({
  @required String text = "",
  IconData icon = (Icons.double_arrow_outlined),
}) {
  return RaisedButton(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    onPressed: () {},
    child: Row(
      children: [
        Expanded(child: Text("$text")),
        Container(
          width: 50,
          height: 1,
        ),
        Icon(icon)
      ],
    ),
    color: Color.fromRGBO(0, 255, 203, 1),
  );
}

Widget AlternativeButtons({
  String text1 = "Alrady have an account?",
  String text2 ="Sign in",
  String text3 ="Forgot password",
  Color color=Colors.black,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "$text1",
                style: TextStyle(
                    fontSize: 10,
                  color: color,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "$text2",
                style: TextStyle(
                    fontSize: 10,
                  color: color,
                ),
              )),
        ],
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "$text3",
            style: TextStyle(fontSize: 10),
          )),
    ],
  );
}

Widget SeparatorLine(){
  return Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
  style: TextStyle(color: Colors.blue,fontSize: 15),);
}
