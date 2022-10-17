import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_app/src/view/checkout_page.dart';
import 'package:remixicon/remixicon.dart';

import '../components/text_font.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Burgers",
      "American",
      "Pizza",
      "Coffee",
      "Express",
      "Chips",
      "Resorta",
      "De Flavor",
      "C. Wings",
      "Express",
    ];

    return Scaffold(
      backgroundColor: const Color(0xffD8D8D8),
      body: SafeArea(
        child: ListView(
          physics: const ScrollPhysics(),
          //verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 25),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    width: 284,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromARGB(240, 231, 231, 231)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                          style: mediumFont().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, CheckoutPage.id);
                      },
                      child: Icon(
                        Remix.notification_2_line,
                        size: 30.h,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            //const Spacer(),
            const SizedBox(
              height: 250,
            ),
            Container(
              height: 550.h,
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
                    "Top categories",
                    style: largeFont(),
                  ),
                  Expanded(
                    //flex: 3,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 20.w,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 14.h, top: 15.h),
                          child: Column(
                            children: [
                              Container(
                                height: 84.h,
                                width: 83.w,
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.r))
                              ),
                                child: const Image(fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/beef.jpg",
                                  ),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(height: 14.h),
                              Text(
                                categories[index],
                                style: mediumFont(),
                              ),
                              Text(
                                "1126 places",
                                style: smallGrayFont(),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    "Popular this week",
                    style: largeFont(),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    // padding: const EdgeInsets.symmetric(vertical: 20),
                    height: 104.h,
                    width: 319.w,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromARGB(134, 190, 190, 190),
                              spreadRadius: 4,
                              blurRadius: 15.0,
                              offset: Offset(6, 0))
                        ]),
                    child: Stack(clipBehavior: Clip.none, children: <Widget>[
                      Positioned(
                        left: 16.5,
                        bottom: 25,
                        child: Container(
                          height: 104.h,
                          width: 104.w,
                          decoration:  const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 233, 232, 232),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 209, 208, 208),
                                  spreadRadius: 3,
                                  blurRadius: 15.0,
                                  offset: Offset(0, 4),
                                  //blurStyle: BlurStyle.normal
                                )
                              ],
                              image: DecorationImage(image: AssetImage("assets/images/steak.jpg"),
                              ),
                              ),
                         
                        ),
                      ),
                      //const SizedBox(width: 12,),
                      Positioned(
                        right: 16.h,
                        top: 18.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chicken Rice",
                                    style:
                                        largeFont().copyWith(fontSize: 17.sp),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 18.h,
                                    width: 58.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                          Radius.circular(9.r),
                                        ),
                                        color: const Color(0xff2CC2DC)),
                                    child: Center(
                                        child: Text(
                                      "Free ship",
                                      style: smallGrayFont().copyWith(
                                          color: Colors.white,
                                          fontSize: 10.h),
                                    )),
                                  )
                                ]),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              "Chicken World",
                              style: smallGrayFont()
                                  .copyWith(color: const Color(0xff6A6A6A)),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "882 Swift Court Apt. 918",
                              style: smallGrayFont(),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(height: 41.h),
                  Container(
                    height: 104.h,
                    width: 319.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: const Color.fromARGB(133, 206, 205, 205),
                              spreadRadius: 3.r,
                              blurRadius: 15.0.r,
                              offset:  Offset(6.w, 0))
                        ]),
                    child: Stack(clipBehavior: Clip.none, children: <Widget>[
                      Positioned(
                        right: 16.5.h,
                        bottom: 25.h,
                        child: Container(
                          height: 104.h,
                          width: 104.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffD8D8D8),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 212, 212, 212),
                                  spreadRadius: 3,
                                  blurRadius: 15.0,
                                  offset: Offset(0, 4),
                                  //blurStyle: BlurStyle.normal
                                ),

                              ],
                              image: DecorationImage(image: AssetImage("assets/images/steak.jpg"),
                              ),
                              ),
                        ),
                      ),
                      //const SizedBox(width: 12,),
                      Positioned(
                        left: 16.h,
                        top: 18.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chicken Rice",
                                    style:
                                        largeFont().copyWith(fontSize: 17.sp),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 18.h,
                                    width: 58.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                          Radius.circular(9.r),
                                        ),
                                        color: const Color(0xff2CC2DC)),
                                    child: Center(
                                        child: Text(
                                      "Free ship",
                                      style: smallGrayFont().copyWith(
                                          color: Colors.white,
                                          fontSize: 10.h),
                                    )),
                                  )
                                ]),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Chicken World",
                              style: smallGrayFont()
                                  .copyWith(color: const Color(0xff6A6A6A)),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "882 Swift Court Apt. 918",
                              style: smallGrayFont(),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text("See More",
                      style: smallGrayFont().copyWith(
                          decoration: TextDecoration.underline,
                          fontSize: 14.sp,
                          color: const Color(0xff080040))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
