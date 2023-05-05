import 'package:flutter/material.dart';
import 'package:news/shared/cubit/cubit.dart';
import '../shared/components/components.dart';

class TechScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    cubit.getTech();
    return Scaffold(
      body: cubit.tech == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return articlesListBuilder(
                  cubit.tech?['articles'][index], context);
              },
            ),
    );
  }
}
