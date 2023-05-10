import 'package:flutter/material.dart';
import '../logic/cubit.dart';
import 'sidePanel.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);

    return Scaffold(
      drawer: const Drawer(
        child: SidePanel(),
      ),
      appBar: AppBar(
        title:const Text(
          'News',
          style:  TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => cubit.changeAppMode(),
            icon:const Icon(
              Icons.search,
              color:Colors.white,
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
  }
}
