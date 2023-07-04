import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

import '../widgets/web/search_buttons.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
              )),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xff1A73EB),
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
             const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                     Search(),
                     SizedBox(
                      height: 20.0,
                    ),
                    SearchButtons(),
                     SizedBox(
                      height: 20.0,
                    ),
                    TranslationButtons(),
                  ],
                ),
                const WebFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
