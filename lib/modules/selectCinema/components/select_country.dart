import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      height: size.height / 14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: DarkTheme.white)),
      child: Row(children: const [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              hintText: 'Select Your Country',
              hintStyle: TxtStyle.heading4,
              icon: Padding(
                padding: EdgeInsets.only(left: 8),
                child: ImageIcon(
                  AssetImage(AssetPath.iconLocation),
                  color: DarkTheme.white,
                ),
              )),
        )),
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 36,
            color: DarkTheme.white,
          ),
        )
      ]),
    );
  }
}
