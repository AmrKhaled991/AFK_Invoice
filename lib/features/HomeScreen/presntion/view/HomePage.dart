import 'package:afktask/core/utils/App_router.dart';
import 'package:afktask/core/utils/app_styles.dart';
import 'package:afktask/features/HomeScreen/presntion/view/widgets/Invoiceview.dart';
import 'package:afktask/features/HomeScreen/presntion/view/widgets/customElvatedhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/get_itLocator.dart';
import '../../data/repos/getallrepos/getallreposatry/getallreposatry.dart';
import '../manger/getallcuibt/getall_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetallCubit(getIt.get<getallreposatry>())..getall(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blueAccent,
              title: const Text('AFK Invoice', style: Styles.blacktextsize24)),
          body: SizedBox(
            width: double.infinity,
            child: Center(child: BlocBuilder<GetallCubit, GetallState>(
              builder: (context, state) {
                if (state is Getallerror || state is GetallInitial) {
                  return CustomElvatedhomebuttom(
                      function: () => context.go(AppRouter.klogin),
                      child: Text(
                          'plaese login', style: Styles.blackregulertext));
                } else if (state is Getallsucsses) {
                  return Invoiceview();
                } else if (state is Getallloading) {
                  return CircularProgressIndicator();
                }
                return Text('lol');
              },
            )),
          ),
        ),
      ),
    );
  }
}
