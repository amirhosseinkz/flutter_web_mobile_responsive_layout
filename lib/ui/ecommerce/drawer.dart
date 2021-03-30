import 'package:flutter/material.dart';

import 'package:responsive_layout_web/widgets/padding.dart';
import 'package:responsive_layout_web/widgets/responsive_layout.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:responsive_layout_web/widgets/drawer/items.dart';

class ECommerceDrawer extends StatelessWidget {
  const ECommerceDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              if(!ResponsiveLayout.isWeb(context))
              Row(
                children: [
                  Image.asset(
                    "assets/digi/digi.png",
                    width: 150,
                  ),
                  Spacer(),

                  // for closing the drawer in tablet and mobile mode
                  if (!ResponsiveLayout.isWeb(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "ورود",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0.8))),
                  child: Text(
                    "ثبت نام",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding * 2),
              DrawerItems(
                onPressed: () {},
                title: "اطلاعات حساب",
                icon: Icons.person_outline_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "مورد علاقه ها",
                icon: Icons.favorite,
              ),

              DrawerItems(
                onPressed: () {},
                title: "سفارش های من",
                icon: Icons.reorder,
              ),
              DrawerItems(
                onPressed: () {},
                title: "سبد خرید",
                icon: Icons.shopping_cart_outlined,
                selected: true,
              ),
              DrawerItems(
                onPressed: () {},
                title: "تنظیمات",
                icon: Icons.settings,
              ),
              DrawerItems(
                onPressed: () {},
                title: "تراکنش ها",
                icon: Icons.payment,
              ),
              DrawerItems(
                onPressed: () {},
                title: "کارت های هدیه",
                icon: Icons.card_giftcard,
              ),
              DrawerItems(
                onPressed: () {},
                title: "پیغام ها",
                icon: Icons.notifications_active_outlined,
                number: 2,
              ),
              SizedBox(height: kPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}