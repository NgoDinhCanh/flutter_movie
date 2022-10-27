import 'package:flutter/widgets.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartComponent extends StatelessWidget {
  const StartComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        color: DarkTheme.yellow,
        size: 15,
      ),
    );
  }
}
