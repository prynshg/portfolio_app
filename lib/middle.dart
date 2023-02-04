import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
      color: Vx.black,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "2rs ki pepsi , "
                .richText
                .withTextSpanChildren(
                ["app mera sexxxxyyyy.".textSpan.yellow400.make()])
                .xl3
                .white
                .make(),
            20.widthBox,
            80.heightBox,
            Expanded(
                child:Column(
                children: [
                  "App development projects".text.white.xl.wide.semiBold.make(),
                  VxSwiper(
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  items: [
                    ProjectWidget(title: "Portfolio APP").mdClick(() {launch("https://github.com/prynshg/portfolio_app");}).make(),
                    ProjectWidget(title: "AI Radio").mdClick(() {launch("https://github.com/prynshg/AI-Radio");}).make(),
                    ProjectWidget(title: "ChatGPT APP").mdClick(() {launch("https://github.com/prynshg/ChatGPT_app");}).make(),
                    ProjectWidget(title: "Catalog APP").mdClick(() {launch("https://github.com/prynshg/CatalogApp");}).make(),
                  ],
                  height: 170,
                  viewportFraction: context.isMobile ? 0.70 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1.seconds,
                )
            ])
            ),
            Expanded(
                child:Column(
                    children: [
                      "ML projects".text.white.xl.semiBold.wide.make(),
                      VxSwiper(
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        items: [
                          ProjectWidget(title: "Stock Trend Prediction").mdClick(() {launch("https://github.com/prynshg/StockTrendPrediction");}).make(),
                          ProjectWidget(title: "House Price Prediction").mdClick(() {launch("https://github.com/prynshg/House-Price-Prediction");}).make(),
                          ProjectWidget(title: "Attendence Using Face Recognition").mdClick(() {launch("https://github.com/prynshg/Attendence-using-Face-Recognition");}).make(),
                          ProjectWidget(title: "Multimodal Sentiment Analysis").mdClick(() {}).make(),
                        ],
                        height: 170,
                        viewportFraction: context.isMobile ? 0.70 : 0.4,
                        autoPlay: true,
                        autoPlayAnimationDuration: 1.seconds,
                      )
                    ])
            )
          ],
      ).p32().h(context.isMobile ? 200 : 300),//500
    ));
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
        .neumorphic(color: Vx.gray800, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}