

import 'package:car_washing/home/search.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../home/home_page.dart';
import '../login/login_page.dart';
import '../register/register_page.dart';

List<GetPage> getPages = [
  GetPage(name: LoginPage.routeName, page: () => LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),
  GetPage(name: Search.routeName, page: () => Search()),
 
];