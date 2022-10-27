import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/modules/selectCinema/components/custom_header.dart';
import 'package:flutter_movie/modules/selectCinema/components/select_country.dart';
import 'package:flutter_movie/modules/selectCinema/select_seat_page.dart';
import 'package:flutter_movie/widgets/stl/button_next.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomHeader(
            size: size,
            content: 'Ralph Breaks the\n Internet',
          ),
          SelectCountry(size: size),
          buildTitle('Choose Date'),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: days
                    .map((e) => Builder(
                        builder: (context) => Container(
                              height: size.height / 8,
                              width: size.width / 5,
                              decoration: BoxDecoration(
                                  color: _getColor(dateStates[days.indexOf(e)]),
                                  borderRadius: BorderRadius.circular(22)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    e.weekday,
                                    style: TxtStyle.heading3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        Text(e.day, style: TxtStyle.heading4),
                                  )
                                ],
                              ),
                            )))
                    .toList(),
              )),
          buildTitle('Central Park CGV'),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            height: size.height / 15,
            child: ListView.builder(
              itemBuilder: ((context, index) =>
                  _buildTimeWidget(size, index, timeStates_1)),
              itemCount: times.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          buildTitle('FX Sudirman XXI'),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            height: size.height / 15,
            child: ListView.builder(
              itemBuilder: ((context, index) =>
                  _buildTimeWidget(size, index, timeStates_2)),
              itemCount: times.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          buildTitle('Kelapa Gading IMAX'),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            height: size.height / 15,
            child: ListView.builder(
              itemBuilder: ((context, index) =>
                  _buildTimeWidget(size, index, timeStates_3)),
              itemCount: times.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          ButtonNext(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectSeatPage()));
            },
          )
        ],
      )),
    );
  }

  Container _buildTimeWidget(Size size, int index, List<TicketStates> states) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: size.width / 4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: _getColor(states[index]),
          borderRadius: BorderRadius.circular(14)),
      child: Text(
        times[index],
        style: TxtStyle.heading3Medium,
      ),
    );
  }

  Color _getColor(TicketStates state) {
    switch (state) {
      case (TicketStates.idle):
        return DarkTheme.darkBackground;
      case (TicketStates.active):
        return DarkTheme.blueMain;
      case (TicketStates.busy):
        return DarkTheme.greyBackground;
      default:
        return DarkTheme.darkerBackground;
    }
  }

  Container buildTitle(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        title,
        style: TxtStyle.heading2,
      ),
    );
  }
}
