import 'package:flutter/material.dart';
import 'package:responsive_layout_web/style/colors/colors.dart';


import '../padding.dart';

// We need stateFull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "همه دسته بندی ها",
    "کالای دیجیتال",
    "زیبایی و سلامت",
    "سرگرمی",
    "ورزش و سفر"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
                (index) => Padding(
              padding: EdgeInsets.only(
                  bottom: kPadding / 4,
                  top: kPadding / 4,
                  right: kPadding,
                  left: index == 0 ? kPadding : 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(
                        kPadding,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        selectedIndex == index
                            ? Colors.white
                            : Colors.white60)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? selectedTextColor
                        : Colors.black.withOpacity(0.3),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}