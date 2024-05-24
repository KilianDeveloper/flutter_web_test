import 'package:flutter/material.dart';
import 'package:flutter_web_test/home/small/header.dart';
import 'package:flutter_web_test/home/small/techstackcard.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:flutter_web_test/widget/slidein.dart';
import 'package:flutter_web_test/widget/small/appbar.dart';

class SmallHome extends StatelessWidget {
  const SmallHome({super.key});

  @override
  Widget build(BuildContext context) {
    final appPadding = loadPadding(context);

    return SmallPortfolioAppBar(
      child: Expanded(
        child: Padding(
          padding: appPadding,
          child: Container(
            color: Colors.transparent,
            child: const SelectionArea(
              child: Stack(
                children: [
                  HomeHeader(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SlideInWidget(child: TechStackCard()),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
