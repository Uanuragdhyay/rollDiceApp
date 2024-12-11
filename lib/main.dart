import 'package:flutter/material.dart';

import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    //flutter built in function {not dart but flutter built in function}
    const MaterialApp(
      home: Scaffold(
        body:GradientContainer( Colors.red,Colors.white),
      ),
    ),
  );
}

