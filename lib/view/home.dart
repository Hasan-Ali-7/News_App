import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubit.dart';
import '../logic/states.dart';
import 'sidePanel.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    NewsCubit cubit = NewsCubit.get(context);
    cubit..fetchAllArticle()
    ..fetchTechArticle()
    ..fetchEconomyArticle()
    ..fetchScienceArticle()
    ..fetchSportArticle();

    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          drawer: Drawer(
            child: SidePanel(),
          ),
          appBar: AppBar(
            title: const Text(
              'News',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          bottomNavigationBar:
              BottomNavigationBar(
            items: cubit.NavBarItems,
            currentIndex: cubit.currentIndex,
            onTap: (index) =>
                cubit.changeNavBar(index),
          ),
          body: cubit.Screens[cubit.currentIndex],
        );
      },
    );
  }
}
