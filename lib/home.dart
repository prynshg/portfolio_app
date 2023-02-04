import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/colors.dart';
import 'package:portfolio_app/footer.dart';
import 'package:portfolio_app/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'routes.dart';

import 'header.dart';
import 'middle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Vx.black,
      child: VStack([

        HeaderScreen(),
        if(context.isMobile)IntroductionWidget().p16(),
        // MiddleScreen(),
        // FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
