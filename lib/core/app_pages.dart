import 'package:fitness_app/pages/started/welcome_view.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = '/welcome';

  static final routes = [
    GetPage(name: '/welcome', page: () => WelcomeView(), transition: Transition.fade),
  ];
}
