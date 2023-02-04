import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_app/header.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Vx.black,
        body:VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "priyanshgarg709@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              "priyanshgarg709@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        20.heightBox,
        feedfack(),
        CustomAppBar(),
        20.heightBox,
        "Thanks for navigating, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        20.heightBox,
        SocialAccountsFooter(),
        30.heightBox,
        [
          "Made in India with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).backgroundColor(Vx.black).wFull(context).p16()));
  }
}

class SocialAccountsFooter extends StatelessWidget {
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
class feedfack extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  feedfack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter your feedback here',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter a value';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Send'),
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              String message;
              try {
                message = 'Feedback sent successfully';
              } catch (e) {
                message = 'Error when sending feedback';
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
              Navigator.pop(context);
            }
          },
        )

      ],
    );
  }
}


