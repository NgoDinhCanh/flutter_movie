import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/app_constants.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/models/cast.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/modules/movieDetail/components/background_widget.dart';
import 'package:flutter_movie/modules/movieDetail/components/caster_crew_bar.dart';
import 'package:flutter_movie/modules/movieDetail/components/trailer_song_bar.dart';
import 'package:flutter_movie/widgets/stl/arrow_back.dart';
import 'package:flutter_movie/widgets/stl/start.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          BackgroundWidget(size: size),
          Container(
            height: size.height / 3.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              GradientPalette.black1,
              GradientPalette.black2,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          const ArrowBack(),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                child: Row(children: [
                  SizedBox(
                    width: size.width / 2.5,
                    child: Image.asset(
                      AssetPath.posterRalph,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          'Ralph Break the Internet',
                          style: TxtStyle.heading3Medium,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Row(children: const [
                          StartComponent(),
                          StartComponent(),
                          StartComponent(),
                          StartComponent(),
                          StartComponent(),
                          Text(
                            '(5.0)',
                            style: TxtStyle.heading4,
                          )
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          'Action & adventure , Comedy',
                          style: TxtStyle.heading4Light,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          '1h42min',
                          style: TxtStyle.heading4Light,
                        ),
                      )
                    ],
                  ))
                ]),
              ),
              SizedBox(
                height: size.height - 120,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.center,
                    width: size.width,
                    child: TabBar(
                      tabs: const [
                        Tab(
                          text: 'About movie',
                        ),
                        Tab(
                          text: 'Review',
                        )
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TxtStyle.heading3,
                      unselectedLabelStyle: TxtStyle.heading3,
                      indicatorColor: DarkTheme.white,
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          buildTitle('Synopsis'),
                          const Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Text(
                              AppConstant.exampleContent,
                              style: TxtStyle.heading4Light,
                            ),
                          ),
                          buildTitle('Cast & Crew'),
                          CasterAndCrewBar(size: size),
                          buildTitle('Trailer and Song'),
                          const TrailerAndSongBar(),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text('Review page'),
                      ),
                    ],
                  ))
                ]),
              )
            ],
          ),
        ],
      )),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        title,
        style: TxtStyle.heading2,
      ),
    );
  }
}
