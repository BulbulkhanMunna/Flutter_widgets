import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:navigationrail/providercal.dart';

import 'all_View.dart';
import 'another.dart';

const String provider = '/providercal';
const String another = '/another';
const String allView = '/all_view';

List<GetPage> getPage = [
  GetPage(
    name: provider,
    page: () => providercl(),
  ),
  GetPage(
    name: another,
    page: () => Another(),
  ),
  GetPage(
    name: allView,
    page: () => AllView(),
  ),
];
