import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remixicon/remixicon.dart';

import '../components/text_font.dart';
import '../widgets.dart';

class CheckoutPage extends StatelessWidget {
  static const String id = "CheckoutPage";

  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBAF02),
        body: SafeArea(
            child: ListView(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Icon(
                      Remix.heart_3_fill,
                      size: 30,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                height: 233.h,
                width: 234.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffD8D8D8),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xffD8D8D8),
                        spreadRadius: 2,
                        blurRadius: 15.0,
                        // blurStyle: BlurStyle.solid,
                        offset: Offset(0, 4),
                      ),
                    ],
                    image: DecorationImage(image: AssetImage("assets/images/steak.jpg"),
                                  ),
                    ),
              ),
              const SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.only(top: 0),
                  //height: 700.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Grilled Beefsteak",
                        style: largeFont().copyWith(
                          color: const Color(0xff080040),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Enjoy these grilled beef steaks sprinkled\nwith salt and pepper that.",
                        textAlign: TextAlign.center,
                        style: smallGrayFont().copyWith(fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      const OptionWidget(
                        title: "Choose Size",
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Small",
                              style: smallCalcFont(),
                            ),
                            Container(
                                height: 36,
                                width: 105,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.r)),
                                  color: const Color(0xff080040),
                                ),
                                child: Center(
                                  child: Text("Medium",
                                      style: smallCalcFont()
                                          .copyWith(color: Colors.white)),
                                )),
                            Text(
                              "Large",
                              style: smallCalcFont(),
                            ),
                          ],
                        ),
                      ),
                      const OptionWidget(
                        title: "Choose Amount",
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 25),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.remove_circle_outline,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2",
                                style: smallCalcFont()
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Remix.add_circle_line,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const OptionWidget(
                        title: "Extra Topping",
                      ),
                      const FoodMenu(
                        menu1: 'Cheese',
                        menu2: 'Strawberry',
                        menu3: 'Cherry',
                        menu4: 'Beef',
                      ),
                      const OptionWidget(
                        title: "Choose Sauce",
                      ),
                      const FoodMenu(
                        menu1: 'Sweet sauce',
                        menu2: 'Hot Sauce',
                        menu3: 'Salsa Sauce',
                        menu4: '',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$30.00",
                              style: largeFont().copyWith(
                                color: const Color(0xff080040),
                              ),
                            ),
                            Container(padding:  EdgeInsets.only(left: 50.w,right: 22.w),
                              //alignment: Alignment.bottomRight,
                              height: 45.h,
                              width: 197.w,
                              decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.r),
                                      bottomLeft: Radius.circular(25.r)),
                                  color: const Color(0xffFBAF02)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  Text("PAY NOW", style: 
                                  largeFont().copyWith(fontSize: 15.sp),),
                                   SizedBox(width: 30.w,),
                                   Icon(Icons.arrow_forward, size: 20.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ])));
  }
}

class FoodMenu extends StatelessWidget {
  final String menu1;
  final String menu2;
  final String menu3;
  final String menu4;
  const FoodMenu({
    Key? key,
    required this.menu1,
    required this.menu2,
    required this.menu3,
    required this.menu4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            menu1,
            style: smallCalcFont(),
          ),
          const HeightSpacing(),
          Text(
            menu2,
            style: smallCalcFont(),
          ),
          const HeightSpacing(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                menu3,
                style: largeFont()
                    .copyWith(fontSize: 17.sp, color: const Color(0xff080040)),
              ),
              const Icon(Icons.check)
            ],
          ),
          const HeightSpacing(),
          Text(
            menu4,
            style: smallCalcFont(),
          ),
        ],
      ),
    );
  }
}



