import 'package:afktask/features/LoginScreen/data/localdata/Localdata.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import '../../features/HomeScreen/presntion/view/HomePage.dart';
import '../../features/LoginScreen/presntion/view/LoginPage.dart';

abstract class AppRouter {
  static const kHome = '/homeView';
  static const klogin = '/login';
  static final router = GoRouter(
    initialLocation: Hive.box<localtoken>('logintoken').get('token')?.token ==null ? klogin:kHome ,
    routes: [
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: klogin,
        builder: (context, state) =>  LoginPage(),
      ),

    ],
  );
}
