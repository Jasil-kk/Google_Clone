import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 28, right: 15),
            child: Image.asset(
              'assets/images/google-logo.png',
              height: 30.0,
              width: 92.0,
            ),
          ),
          const SizedBox(
            width: 27.0,
          ),
        ],
      ),
    );
  }
}
