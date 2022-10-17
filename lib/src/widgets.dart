import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_app/src/components/text_font.dart';

class HeightSpacing extends StatelessWidget {
  const HeightSpacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String title;
  const OptionWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffD8D8D8),
        child: Center(
          child: Text(title,
              style: smallGrayFont().copyWith(color: const Color(0xff080040))),
        ));
  }
}
