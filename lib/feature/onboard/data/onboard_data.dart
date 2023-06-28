import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardDatas
{
  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Set your own goals and get better",
      description: "Goal support your motivation and inspire you to work harder",
      imgUrl: 'assets/playstore.png',
    ),
    const OnBoardModel(
      title: "Track your progress with statistics",
      description:
      "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/desktop.png',
    ),
    const OnBoardModel(
      title: "Create photo comparision and share your results",
      description:
      "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/desktop2.png',
    ),
  ];
}