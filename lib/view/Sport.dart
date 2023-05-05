import 'package:flutter/material.dart';
import '../shared/components/components.dart';
import '../shared/cubit/cubit.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    cubit.getSports();
    return Scaffold(
      body: cubit.sports == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return articlesListBuilder(
                    cubit.sports?['articles'][index], context);
              },
            ),
    );
  }
}

