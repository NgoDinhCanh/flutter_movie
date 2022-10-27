import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/models/cast.dart';
import 'package:flutter_movie/modules/selectCinema/select_cinema_page.dart';

class Movie {
  String posterImg;
  String backgroundImg;
  String title;
  String trailerImg;
  List<Cast> casters;
  List<String> trailers;

  Movie(
      {required this.posterImg,
      required this.backgroundImg,
      required this.title,
      required this.trailerImg,
      required this.casters,
      required this.trailers});
}

final List<String> genres = [
  'All',
  'Action',
  'Drama',
  'Honor',
  'Romance',
  'Fantasy'
];

final List<Movie> movies = [
  Movie(
      backgroundImg: AssetPath.backgroundRalph,
      posterImg: AssetPath.posterRalphx2,
      title: 'Wreck It Ralph 2',
      trailerImg: '',
      casters: [
        Cast(name: 'Reilly', profileImageUrl: AssetPath.castJohnCReilly),
        Cast(name: 'SilverMan', profileImageUrl: AssetPath.castSarahSilverman),
        Cast(name: 'McBrayer', profileImageUrl: AssetPath.castJackMcBrayer),
        Cast(name: 'Henson', profileImageUrl: AssetPath.castTarajiPHenson),
      ],
      trailers: [
        AssetPath.trailerRalph1x2,
        AssetPath.trailerRalph2x2
      ]),
  Movie(
      backgroundImg: AssetPath.backgroundOnward,
      posterImg: AssetPath.posterOnwardx2,
      title: 'Onward',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: AssetPath.backgroundDragon,
      posterImg: AssetPath.posterDragonx2,
      title: 'How To Train Your Dragon',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterScoobx2,
      title: 'The Spongebob Movie',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterFrozenx2,
      title: 'Frozen II',
      trailerImg: '',
      casters: [],
      trailers: []),
  Movie(
      backgroundImg: 'assets/images/movie_dragon.png',
      posterImg: AssetPath.posterTopUpx2,
      title: 'Top Up Movie',
      trailerImg: '',
      casters: [],
      trailers: []),
];

class Date {
  String day;
  String weekday;
  Date({
    required this.day,
    required this.weekday,
  });
}

enum TicketStates { idle, busy, active }

final List<Date> days = [
  Date(day: '20', weekday: 'SAT'),
  Date(day: '21', weekday: 'SUN'),
  Date(day: '22', weekday: 'MON'),
  Date(day: '23', weekday: 'TUE'),
];
final List<String> times = ['12:20', '14:30', '16:30', '19:00'];

final List<TicketStates> dateStates = [
  TicketStates.idle,
  TicketStates.active,
  TicketStates.busy,
  TicketStates.idle,
];

final List<TicketStates> timeStates_1 = [
  TicketStates.idle,
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle,
];
final List<TicketStates> timeStates_2 = [
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.active,
  TicketStates.idle,
];
final List<TicketStates> timeStates_3 = [
  TicketStates.busy,
  TicketStates.idle,
  TicketStates.idle,
  TicketStates.idle,
];

final List<String> seatRows = ['A', 'B', 'C', 'D', 'E'];
final List<String> seatNumbers = ['1', '2', '3', '4', '5', '6'];
