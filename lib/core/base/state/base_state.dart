import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseState<T extends StatefulWidget, M extends GetxController>
    extends State<T> {
  final M controller;
  BaseState({Key? key, required this.controller});
  void onControllerReady();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    onControllerReady();
    controller.onInit();
    super.initState();
  }

  ThemeData get themeData => Theme.of(context);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  TextTheme get textTheme => Theme.of(context).textTheme;
  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
  double get topPadding => MediaQuery.of(context).padding.top;
  double get bottomPadding => MediaQuery.of(context).padding.bottom;
  double dynamicHeight(double value) =>
      (height - topPadding - bottomPadding) /
      893 *
      value; //AppConst.designHeight
  double dynamicWidth(double value) =>
      width / 390 * value; // AppConst.designWidth
}

abstract class BaseStateless extends StatelessWidget {
  const BaseStateless({Key? key}) : super(key: key);
  ThemeData themeData(BuildContext context) => Theme.of(context);
  ColorScheme colorScheme(BuildContext context) =>
      Theme.of(context).colorScheme;
  DividerThemeData dividerTheme(BuildContext context) =>
      Theme.of(context).dividerTheme;

  TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;
  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double topPadding(BuildContext context) => MediaQuery.of(context).padding.top;
  double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;
  double dynamicHeight(BuildContext context, double value) =>
      (height(context) - topPadding(context) - bottomPadding(context)) /
      893 *
      value;
  double dynamicWidth(BuildContext context, double value) =>
      width(context) / 390 * value;
}

extension StatefulSize on State {
  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double topPadding(BuildContext context) => MediaQuery.of(context).padding.top;
  double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;
  double dynamicHeight(BuildContext context, double value) =>
      (height(context) - topPadding(context) - bottomPadding(context)) /
      890 *
      value;
  double dynamicWidth(BuildContext context, double value) =>
      width(context) / 390 * value;
}

extension StatelessSize on StatelessWidget {
  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double topPadding(BuildContext context) => MediaQuery.of(context).padding.top;
  double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;
  double dynamicHeight(BuildContext context, double value) =>
      (height(context) - topPadding(context) - bottomPadding(context)) /
      893 *
      value;
  double dynamicWidth(BuildContext context, double value) =>
      width(context) / 390 * value;
}
