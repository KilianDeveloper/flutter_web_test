import 'package:flutter/material.dart';
import 'package:flutter_web_test/home/large/header.dart';
import 'package:flutter_web_test/home/large/techstackcard.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';
import 'package:flutter_web_test/widget/slidein.dart';

class LargeHome extends StatelessWidget {
  const LargeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const LargePortfolioAppBar(
      fillSpace: true,
      child: Stack(
        children: [
          HomeHeader(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideInWidget(child: TechStackCard()),
          )
        ],
      ),
    );
  }
}
