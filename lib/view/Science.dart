import 'package:flutter/material.dart';
import '../shared/components/components.dart';
import '../shared/cubit/cubit.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    cubit.getScience();
    return Scaffold(
      body: cubit.science == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return articlesListBuilder(
                    cubit.science?['articles'][index], context);
              },
            ),
    );
  }
}

