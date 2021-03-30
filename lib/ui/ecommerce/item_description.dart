import 'package:flutter/material.dart';
import 'package:responsive_layout_web/style/colors/colors.dart';
import 'package:responsive_layout_web/widgets/item_decription/top_bar.dart';
import 'package:responsive_layout_web/widgets/padding.dart';
import 'package:responsive_layout_web/widgets/responsive_layout.dart';
import 'package:responsive_layout_web/widgets/padding.dart';


class ECommerceItemDescription extends StatelessWidget {
  const ECommerceItemDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/switch_logo.png"),
                      ),
                      SizedBox(width: kPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child:Text(
                                        "نینتندو سویچ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(fontSize: 20 , color: textColor),
                                      )
                                ),
                                SizedBox(width: kPadding / 2),
                                Text("8000000 تومان", style: TextStyle(fontSize: 20 , color: textColor)),
                                    ],
                                  ),
                            SizedBox(height: kPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: List.generate(
                                            3,
                                            (index) => Container(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  "assets/switch_$index.jpg",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: kPadding * 3,
                                        ),
                                        if (constraints.maxWidth > 300)
                                          Container(
                                            width: constraints.maxWidth > 840
                                                ? 600
                                                : constraints.maxWidth - 200,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/switch_box.jpg",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    SizedBox(height: kPadding),
                                    Divider(thickness: 1 , color: divider,),
                                    SizedBox(height: kPadding / 2),
                                    Text(
                                      "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است،\n "
                                          "چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.\n"
                                          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color:textColor,
                                      ),
                                    ),
                                    SizedBox(height: kPadding),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text("نظرات (5) ",
                                            style: TextStyle(fontSize: 15 , color: textColor)),
                                        Icon(Icons.star_rounded,
                                            color:
                                            Colors.yellow),
                                        Icon(Icons.star_rounded,
                                            color:
                                            Colors.yellow),
                                        Icon(Icons.star_rounded,
                                            color:
                                            Colors.yellow),
                                        Icon(Icons.star_rounded,
                                            color:
                                            Colors.yellow),
                                        Icon(Icons.star_outline_rounded,
                                            color:
                                            Colors.yellow),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1),
              TopBarDescription(),
            ],
          ),
        ),
      ),
    );
  }
}
