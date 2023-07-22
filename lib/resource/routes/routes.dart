import 'package:get/get.dart';
import 'package:mvvm_architecture/resource/routes/routes_names.dart';
import 'package:mvvm_architecture/view/change_language_view.dart';
import 'package:mvvm_architecture/view/help_view.dart';
import 'package:mvvm_architecture/view/home_view.dart';
import 'package:mvvm_architecture/view/login_view.dart';
import 'package:mvvm_architecture/view/my_journey_view.dart';
import 'package:mvvm_architecture/view/notification_view.dart';
import 'package:mvvm_architecture/view/profile_view.dart';
import 'package:mvvm_architecture/view/settings_view.dart';
import 'package:mvvm_architecture/view/splash_screen.dart';
import 'package:mvvm_architecture/view/support_view.dart';

class AppRoutes{
  static appRoutes() => [
    GetPage(name: RoutesName.splashScreen, page: ()=> SplashScreen(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.loginScreen, page: ()=> LoginView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.homeScreen, page: ()=> HomeView(), transition: Transition.rightToLeft),

    GetPage(name: RoutesName.profileScreen, page: ()=> ProfileView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.supportScreen, page: ()=> SupportView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.settingsScreen, page: ()=> SettingsView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.helpScreen, page: ()=> HelpView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.notificationScreen, page: ()=> NotificationView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.changeLanguageScreen, page: ()=> ChangeLanguageView(), transition: Transition.rightToLeft),
    GetPage(name: RoutesName.myJourneyScreen, page: ()=> MyJourneyView(), transition: Transition.rightToLeft),

  ];
}