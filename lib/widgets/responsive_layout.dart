import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const ResponsiveLayout({Key key, this.mobile, this.tablet, this.web}) : super(key: key);

  static int mobileLimit = 640;
  static int tabletLimit = 1200;
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < tabletLimit &&
  MediaQuery.of(context).size.width >= mobileLimit;
  static bool isWeb(BuildContext context) => MediaQuery.of(context).size.width >= tabletLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context , BoxConstraints constraints){
      if(constraints.maxWidth < mobileLimit){
        return mobile;
      }else if(constraints.maxWidth < tabletLimit) {
        return tablet;
      }else{
        return web;
      }
    });
  }
}
