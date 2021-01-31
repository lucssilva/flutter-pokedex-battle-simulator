import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget({this.child});
  final Widget child;
  static const double _SIZE = 240.0;
  @override
  Widget build(_) => Stack(overflow: Overflow.visible, children: <Widget>[
        Positioned(
          top: MediaQuery.of(_).padding.top - _SIZE * .4,
          left: MediaQuery.of(_).size.width - (_SIZE * .75),
          child: Opacity(
            opacity: .1,
            child: Image.asset(
              ImagePaths.POKEBALL_DARK,
              height: _SIZE,
              width: _SIZE,
            ),
          ),
        ),
        if (child != null) child,
      ]);
}
