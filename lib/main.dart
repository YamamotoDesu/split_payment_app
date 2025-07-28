import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:split_payment_app/app.dart';
import 'package:split_payment_app/flavors.dart';

void main() {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  runApp(const App());
}
