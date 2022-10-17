import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';

import '../components/text_font.dart';
import '../widgets.dart';

List<String> status = [
  "Send Request",
  "Confrimed Order",
  "Shipped Order",
  "Shipping",
  "Receive Food"
];

const kTileHeight = 40.0;
const data = _TimelineStatus.values;

class Order extends StatefulWidget {
  static const String id = "Order";

  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 19),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                    ),
                     SizedBox(
                      width: MediaQuery.of(context).size.width /5.5,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Chicken Rice Salad",
                          style: largeFont().copyWith(fontSize: 18.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              //const SizedBox(height: 200,),
              Container(
                padding:  EdgeInsets.only(top: 80.h),
                height: 320.h,
                width: MediaQuery.of(context).size.width.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFBAF02),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                child: Stack(clipBehavior: Clip.none, children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                     
                      children: [
                       
                        Text(
                          "Chicken Rice Salad x2",
                          style: largeFont().copyWith(
                            color: const Color(0xff080040),
                          ),
                        ),
                        Timeline.tileBuilder(
                          shrinkWrap: true,
                          theme: TimelineThemeData(
                            nodePosition: 0,
                            connectorTheme:  const ConnectorThemeData(
                              thickness: 3.0,
                              color: Color.fromARGB(255, 226, 226, 226),
                            ),
                            indicatorTheme:  IndicatorThemeData(
                              size: 8.0.w,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 0.0.w, horizontal: 20.w),
                          builder: TimelineTileBuilder.connected(
                            contentsBuilder: (_, index) => _EmptyContents(
                                title: status[index], index: index),
                            connectorBuilder: (_, index, __) {
                              if (index == 0 || index == 1 ) {
                                return const SolidLineConnector(
                                    color: Color(0xff080040));
                              } else {
                                return const SolidLineConnector();
                              }
                            },
                            indicatorBuilder: (_, index) {
                              switch (data[index]) {
                                case _TimelineStatus.sendRequest:
                                  return const DotIndicator(
                                    color: Color(0xff080040),
                                  );
                                case _TimelineStatus.confirmeedOrder:
                                  return const DotIndicator(
                                    color: Color(0xff080040),
                                    // child: Icon(
                                    //   Icons.c,
                                    //   size: 10.0,
                                    //   color: Colors.white,
                                    // ),
                                  );
                                case _TimelineStatus.shippperReceived:
                                  return const OutlinedDotIndicator(
                                    color: Color(0xff080040),
                                    borderWidth: 2.0,
                                    backgroundColor: Color(0xff080040),
                                  );
                                case _TimelineStatus.shipping:
                                  return const OutlinedDotIndicator(
                                    color: Color.fromARGB(255, 226, 226, 226),
                                    borderWidth: 2.0,
                                    backgroundColor: Color.fromARGB(255, 226, 226, 226),
                                  );
                        
                                case _TimelineStatus.receivedFood:
                                default:
                                  return const OutlinedDotIndicator(
                                    color: Color.fromARGB(255, 226, 226, 226),
                                    backgroundColor: Color.fromARGB(255, 226, 226, 226),
                                  );
                              }
                            },
                            itemExtentBuilder: (_, __) => kTileHeight,
                            itemCount: status.length,
                          ),
                        ),
                      
                     
                        //const Spacer(),
                     Padding(
                     padding:  EdgeInsets.only(right: 25.w),
                     child: Align(
                    alignment: Alignment.centerRight,
                     child: Text(
                              "Coming in 15mins",
                              style: mediumFont().copyWith(
                                color:  Colors.white
                              ),
                            ),
                     ),
                     ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 100.h,
                    left: 100.h,
                    //top: 10,
                    bottom: 250.h,
                    child: Container(
                      alignment: Alignment.center,
                      height: 144.h,
                      width: 144.w,
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
                          image: DecorationImage(image: AssetImage("assets/images/steak.jpg"))
                          ),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    ]);
  }
}

class _EmptyContents extends StatelessWidget {
  _EmptyContents({required this.title, required this.index});
  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      height: 15.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        //  color: const Color(0xffe6e7e9),
      ),
      child: Text(
        title,
        style: index < 3
            ? smallCalcFont()
                .copyWith(fontSize: 14.0, color: const Color(0xff080040))
            : smallCalcFont().copyWith(fontSize: 14.0, color: const Color.fromARGB(255, 228, 226, 226)),
      ),
    );
  }
}

enum _TimelineStatus {
  sendRequest,
  confirmeedOrder,
  shippperReceived,
  shipping,
  receivedFood
}

extension on _TimelineStatus {
  bool get isInProgress => this == _TimelineStatus.shippperReceived;
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
