import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class LanguageText extends StatelessWidget {
  final String? title;
  const LanguageText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(title!,style: TextStyle(color: blueColor),),
    );
  }
}
