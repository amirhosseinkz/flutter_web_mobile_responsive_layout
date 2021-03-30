import 'package:flutter/material.dart';
import 'package:responsive_layout_web/ui/ecommerce/drawer.dart';
import 'package:responsive_layout_web/ui/ecommerce/item_description.dart';
import 'package:responsive_layout_web/ui/ecommerce/items.dart';
import 'package:responsive_layout_web/widgets/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(

      body: ResponsiveLayout(
        //1//
        mobile: ECommerceItems(),
        //2//
        tablet: Row(
          children: [
            Expanded(
              flex: _size.width < 900 ? 5 : 4,
              child: ECommerceItems(),),
            Expanded(
              flex: _size.width < 900 ? 5 : 6,
              child: ECommerceItemDescription(),),
          ],
        ),
        //3//
        web: Row(
          children: [
            Expanded(
              flex: _size.width < 1340 ? 3 : 5,
              child: ECommerceItems(),),
            Expanded(
              flex: _size.width < 1340 ? 7 : 10,
              child: ECommerceItemDescription(),),
            Expanded(
              flex: _size.width < 1340 ? 2 : 4,
              child: ECommerceDrawer(),),
          ],
        ),
      ),
    );
  }
}
