import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'colors.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget= "Priyansh\nGarg.".
    text.white.xl5.
    lineHeight(1).size(context.isMobile?10:20).bold.make();
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack([
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if(context.isMobile) 100.heightBox else 20.heightBox,
                  CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,
                  ),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox().color(Coolers.accentColor).size(60,10).make()
                      .shimmer(primaryColor: Coolers.accentColor),
                  30.heightBox,
                  SocialAccounts()
                ]).pSymmetric(h:context.percentWidth*10,v:32
      ),
      Expanded(
        child: VxResponsive(
          medium: IntroductionWidget()
              .pOnly(left: 120)
              .h(context.percentHeight * 60),
          large: IntroductionWidget()
              .pOnly(left: 120)
              .h(context.percentHeight * 60),
          fallback: const Offstage(),
        ),
      )
      ],
    ).w(context.screenWidth)
    ],
    )
    ]))
        .size(context.screenWidth, context.percentHeight * 60)
        .color(Coolers.secondaryColor)
        .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
    "Introduction".text.gray400.widest.sm.make(),
    10.heightBox,
    "A Java Coder, ML Enthusiast and an APP Developer".text
        .white.xl3.maxLines(5).make()
        .w(context.isMobile?context.screenWidth:context.percentWidth*40),
    20.heightBox,
    ],
    alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset("assets/self.png",
      fit:BoxFit.cover,
      height: context.percentHeight*60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/prynshg/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/prynshg/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/prynshg");
      }).make()
    ].hStack();
  }
}
