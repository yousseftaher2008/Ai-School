import 'package:flutter/material.dart';

import '../../constants/styles/colors.dart';

Widget firstAppBar({required Widget child}) => DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment(-1.15, -1.986),
            end: Alignment(1, 0),
            colors: [
              primaryColor,
              primaryColorLight,
              primaryColorLight,
              primaryColorLight,
            ],
            stops: [
              0.5,
              0.7,
              0.75,
              1
            ]),
      ),
      child: child,
    );
