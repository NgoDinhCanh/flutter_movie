import 'package:flutter/widgets.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/models/movie.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates _ticketStates = TicketStates.idle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Expanded(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _ticketStates = _ticketStates == TicketStates.idle
                ? TicketStates.active
                : TicketStates.idle;
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: _ticketStates == TicketStates.idle
                ? DarkTheme.grey
                : DarkTheme.blueMain,
          ),
          child: widget.child,
        ),
      )),
    );
  }
}
