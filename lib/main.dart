import 'package:afktask/core/utils/App_router.dart';
import 'package:afktask/features/LoginScreen/data/localdata/Localdata.dart';
import 'package:afktask/features/LoginScreen/data/repos/authrepostry/authreposatry.dart';
import 'package:afktask/features/LoginScreen/presntion/manger/logincubit/logincubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/utils/get_itLocator.dart';
import 'features/HomeScreen/data/repos/addrepo/Addtrpostry/getallreposatry.dart';
import 'features/HomeScreen/presntion/manger/addcubit/add_cubit.dart';
import 'features/HomeScreen/presntion/manger/itemquntity/itemquintaty_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(localtokenAdapter());
  await Hive.openBox<localtoken>('logintoken');
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LogincubitCubit>(
        create: (context) => LogincubitCubit(getIt.get<authreposatry>()),
      ),
      BlocProvider<ItemquintatyCubit>(
        create: (context) => ItemquintatyCubit(),
      ),
      BlocProvider<AddCubit>(
      create: (context) => AddCubit(getIt.get<Addreposatry>()),),

    ],
      child: MaterialApp.router(
        theme: ThemeData.dark(),
        builder: (context, child) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            child: child,
          );
        },
        debugShowCheckedModeBanner: false,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}


