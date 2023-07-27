import 'package:News/logic/cubits/allCubit/allNewscubit.dart';
import 'package:News/logic/cubits/economyCubit/economyCubit.dart';
import 'package:News/logic/cubits/scienceCubit/scienceCubit.dart';
import 'package:News/logic/cubits/sportCubit/sportCubit.dart';
import 'package:News/logic/cubits/techCubit/techCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubits/appCubit/app_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: BlocProvider.of<App_Cubit>(context).NavBarItems,
          currentIndex: BlocProvider.of<App_Cubit>(context).currentIndex,
          onTap: (index) => BlocProvider.of<App_Cubit>(context).changeNavBar(index),
        ),
        body:  BlocProvider.of<App_Cubit>(context).Screens[BlocProvider.of<App_Cubit>(context).currentIndex],
      ),
    );
  }
}
