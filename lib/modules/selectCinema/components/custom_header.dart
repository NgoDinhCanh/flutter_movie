import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.size, required this.content})
      : super(key: key);

  final Size size;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 10,
          child: Center(
              child: Text(
            content,
            style: TxtStyle.heading1,
            textAlign: TextAlign.center,
          )),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: DarkTheme.white,
            ),
          ),
        )
      ],
    );
  }
}
