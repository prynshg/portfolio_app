import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                ["Some of the projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  items: [
                    ProjectWidget(title: "Portfolio APP").mdClick(() {launch("https://github.com/prynshg/portfolio_app");}).make(),
                    ProjectWidget(title: "AI Radio").mdClick(() {launch("https://github.com/prynshg/AI-Radio");}).make(),
                    ProjectWidget(title: "ChatGPT APP").mdClick(() {launch("https://github.com/prynshg/ChatGPT_app");}).make(),
                    ProjectWidget(title: "Catalog APP").mdClick(() {launch("https://github.com/prynshg/CatalogApp");}).make(),
                  ],
                  height: 170,
                  viewportFraction: context.isMobile ? 0.75 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1.seconds,
                ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}