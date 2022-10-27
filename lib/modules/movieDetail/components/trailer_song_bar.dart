import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/models/movie.dart';

class TrailerAndSongBar extends StatelessWidget {
  const TrailerAndSongBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: movies[0]
              .trailers
              .map((e) => Builder(builder: ((context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Stack(children: [
                        Container(
                          width: 260,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage(e))),
                        ),
                        Container(
                          width: 260,
                          height: 160,
                          decoration:
                              const BoxDecoration(color: Colors.black12),
                        ),
                        GestureDetector(
                          onTap: () {
                            //play something
                          },
                          child: SizedBox(
                            height: 160,
                            width: 260,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 56),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: DarkTheme.blueMain),
                              child: const ImageIcon(
                                AssetImage(AssetPath.iconPlay),
                                color: DarkTheme.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    );
                  })))
              .toList(),
        ));
  }
}
