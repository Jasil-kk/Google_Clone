import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab(
      {Key? key, required this.icon, this.isActive = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive! ? blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(text,
                style: TextStyle(
                    color: isActive ? blueColor : Colors.grey, fontSize: 15)),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        isActive
            ? Container(
                color: blueColor,
                width: 40,
                height: 3,
              )
            : Container(),
      ],
    );
  }
}
