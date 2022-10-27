import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/modules/selectCinema/check_out_page.dart';
import 'package:flutter_movie/modules/selectCinema/components/custom_header.dart';
import 'package:flutter_movie/modules/selectCinema/components/toggle_button.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeader(
            size: size,
            content: 'Ralph Breaks the\n Internet',
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 4, left: 24),
            child: const Text(
              'FX Sudirman XXI',
              style: TxtStyle.heading3Light,
            ),
          ),
          //Seat status bar
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSeatStatusBar(
                      content: 'Available', color: DarkTheme.darkBackground),
                  buildSeatStatusBar(
                      content: 'Booked', color: DarkTheme.greyBackground),
                  buildSeatStatusBar(
                      content: 'Your Seat', color: DarkTheme.blueMain),
                ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: seatRows
                      .map((row) => Builder(builder: ((context) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: seatNumbers.map((number) {
                                return ToggleButton(
                                  child: Text(row + number),
                                );
                              }).toList(),
                            );
                          })))
                      .toList()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Screen',
              style: TxtStyle.heading4,
            ),
          ),
          Image.asset(AssetPath.screenx2),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Total Price:',
                        style: TxtStyle.heading3Medium,
                      ),
                      Text(
                        '150.000 VND',
                        style: TxtStyle.heading4Light,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckOutPage()));
                    },
                    child: Container(
                      height: size.height / 16,
                      width: size.width / 3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: DarkTheme.blueMain,
                          borderRadius: BorderRadius.circular(14)),
                      child: const Text(
                        'Book Ticket',
                        style: TxtStyle.heading4Medium,
                      ),
                    ),
                  )
                ]),
          )
        ],
      )),
    );
  }

  Row buildSeatStatusBar({required String content, required Color color}) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            content,
            style: TxtStyle.heading4,
          ),
        ),
      ],
    );
  }
}
