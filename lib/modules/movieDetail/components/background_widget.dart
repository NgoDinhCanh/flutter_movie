import 'package:flutter/widgets.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/constants/assets_path.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: size.height / 3.5,
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AssetPath.teaserRalph)),
            gradient: LinearGradient(colors: [
              GradientPalette.black1,
              GradientPalette.black2,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          GradientPalette.black2,
          GradientPalette.black1,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      )
    ]);
  }
}
