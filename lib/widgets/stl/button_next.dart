import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/constants/assets_path.dart';

class ButtonNext extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonNext({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: onTap,
        child: const ImageIcon(
          AssetImage(AssetPath.iconNext),
          color: DarkTheme.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: DarkTheme.blueMain),
      ),
    );
  }
}
