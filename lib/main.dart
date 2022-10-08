import 'package:flutter/material.dart';
import 'package:flutter_responsive_framework_tutorial/courses_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, Widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, Widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ResponsiveBreakpoint.autoScale(2300, name: 'XXL'),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
        breakpointsLandscape: [],
      ),
      title: 'Flutter Responsive Framework',
      home: const CoursesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
