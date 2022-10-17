import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/src/view/checkout_page.dart';


class CustomRoute {
  static Map<String, WidgetBuilder> mappedRoute() {
    return {
      CheckoutPage.id: (context) => const CheckoutPage(),
    };
  }
}
