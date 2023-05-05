import 'package:flutter/material.dart';
import 'package:news/shared/cubit/cubit.dart';

import '../shared/cubit/states.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    cubit.getTech();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Newsaily',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search,
            color: Colors.white,
            size: 30,),
          ),
          IconButton(
            onPressed: () => cubit.changeAppMode(),
            icon: Icon(Icons.brightness_6,
            color: Colors.white,
            size: 30,),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: cubit.NavBarItems,
        currentIndex: cubit.currentIndex,
        onTap: (index) {
          cubit.changeNavBar(index);
          cubit.getTech();
          cubit.getbusiness();
          cubit.getScience();
          cubit.getSports();
        },
      ),
      body: cubit.Screens[cubit.currentIndex],
    );
  }
}
