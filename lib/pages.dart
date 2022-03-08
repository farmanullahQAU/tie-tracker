import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tie_tracker/main.dart';

import 'binder.dart';
import 'route_names.dart';
import 'screens/home/home.dart';

List<GetPage> pages = [
  // GetPage(name: RouteNames.SPLASH, page: () => Splash(), binding: Binder()),
  GetPage(name: RouteNames.HOME, page: () =>  HomeView(), binding: Binder()),
  GetPage(name: RouteNames.SPLASH, page: () => Splash(), binding: Binder()),
  // GetPage(name: RouteNames.FEEDBACK, page: () => FeedbackPage(), binding: Binder()),
  // GetPage(name: RouteNames.VERBTYPE, page: () => VerbTypes(), binding: Binder()),
  // GetPage(name: RouteNames.IDIOMS, page: () => IdiomsAndSlangs(), binding: Binder()),

  // GetPage(name: RouteNames.ADDNOTE, page: () => AddNewNote(), binding: Binder()),
  // GetPage(name: RouteNames.NOTES, page: () => Notes(), binding: Binder()),




];
