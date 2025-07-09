import 'package:fitness_app/pages/started/about_view.dart';
import 'package:fitness_app/pages/started/login_view.dart';
import 'package:fitness_app/pages/started/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(name: Routes.WELCOME, page: () => WelcomeView(), transition: Transition.fade),
    GetPage(name: Routes.ABOUT, page: () => AboutView(), transition: Transition.cupertino),
    GetPage(name: Routes.LOGIN, page: () => LoginView(), transition: Transition.cupertino),
  ];
}
