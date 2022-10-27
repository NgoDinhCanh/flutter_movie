import 'package:flutter/widgets.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/modules/movieDetail/components/caster_item.dart';

class CasterAndCrewBar extends StatelessWidget {
  const CasterAndCrewBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: movies[0]
              .casters
              .map((e) => Builder(builder: ((context) {
                    return CasterItem(
                      size: size,
                      cast: e,
                    );
                  })))
              .toList(),
        ));
  }
}
