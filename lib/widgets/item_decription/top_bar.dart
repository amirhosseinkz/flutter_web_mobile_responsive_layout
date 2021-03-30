import 'package:flutter/material.dart';


import 'package:responsive_layout_web/widgets/responsive_layout.dart';
import '../padding.dart';

class TopBarDescription extends StatelessWidget {
  //The Top Bar over the description page
  const TopBarDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          // to have a print icon button in web and also a back button in mobile mode
          if (ResponsiveLayout.isWeb(context))
            IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ),
          //
          if (ResponsiveLayout.isMobile(context)) BackButton(color: Colors.black,),
          Spacer(),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
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
                      horizontal: kPadding * 0.5
                    ),
                  ),
                  backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).accentColor)),
              child: Text(
                "افزودن به سبد خرید",
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}