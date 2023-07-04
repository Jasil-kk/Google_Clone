import 'package:flutter/material.dart';

import '../../colors.dart';

class SearchButton extends StatelessWidget {
  final String? title;
  const SearchButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
      color: searchColor,
      child: Text(
        title!,
      ),
    );
  }
}
