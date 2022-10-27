import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(children: [
          Expanded(
              child: Container(
            height: size.height / 15,
            decoration: BoxDecoration(
                color: DarkTheme.darkBackground,
                borderRadius: BorderRadius.circular(22)),
            child: Row(children: const [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 12),
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: DarkTheme.white,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Movie ...',
                      hintStyle: TxtStyle.heading3Medium,
                      border: InputBorder.none),
                ),
              )
            ]),
          )),
          Container(
            margin: const EdgeInsets.only(left: 8),
            width: size.height / 15,
            height: size.height / 15,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                GradientPalette.blue1,
                GradientPalette.blue2,
              ]),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(AssetPath.iconControl),
          ),
        ]),
      ),
    );
  }
}
