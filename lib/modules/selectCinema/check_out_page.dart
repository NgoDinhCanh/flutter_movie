import 'package:flutter/material.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/modules/selectCinema/components/custom_header.dart';
import 'package:flutter_movie/widgets/stl/start.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomHeader(
            content: 'Checkout\n Movie',
            size: size,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: DarkTheme.white, width: 1))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: size.width / 2.5,
                    child: Image.asset(
                      AssetPath.posterRalphx2,
                      scale: 1.2,
                    ),
                  ),
                  MovieInfoWidget(size: size)
                ]),
          ),
          buildPriceTag('ID Order', '30031997'),
          buildPriceTag('Cinema', 'FX Sudirman XXI'),
          buildPriceTag('Date & Time', 'Sun May 22,16:40'),
          buildPriceTag('Seat Number', 'D7,D8,D9'),
          buildPriceTag('Price', '50.000x3 VND'),
          buildPriceTag('Total', '150.000 VND'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.only(bottom: 24),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: DarkTheme.white, width: 1))),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Wallet',
                      style: TxtStyle.heading4Light,
                    ),
                    Text('200.000 VND',
                        style: TxtStyle.heading4.copyWith(
                          color: DarkTheme.blueMain,
                        )),
                  ])),
          Expanded(
              child: Center(
            child: GestureDetector(
              onTap: () {
                print('Completed');
              },
              child: Container(
                height: size.height / 16,
                width: size.width / 2,
                decoration: BoxDecoration(
                    color: DarkTheme.blueMain,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: const Text(
                  'Check Out',
                  style: TxtStyle.heading4,
                ),
              ),
            ),
          ))
        ],
      )),
    );
  }

  Container buildPriceTag(String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: TxtStyle.heading4Light,
        ),
        Text(
          value,
          style: TxtStyle.heading4,
        ),
      ]),
    );
  }
}

class MovieInfoWidget extends StatelessWidget {
  const MovieInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    ));
  }
}
