import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

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
          Container(
            width: size.width * 0.45,
            height: 44.0,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: searchColor)
            ),
            child: TextFormField(
              style: TextStyle(fontSize: 16),
                textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/mic-icon.svg',height: 20,width: 20,),
                       const SizedBox(width: 20,),
                        const Icon(Icons.search,color: blueColor,),
                      ],
                    ),
                  ),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
