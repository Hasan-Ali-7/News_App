import 'package:flutter/material.dart';
import '../shared/components/components.dart';
import '../shared/cubit/cubit.dart';

class businessScreen extends StatelessWidget {
  const businessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    cubit.getbusiness();
    return Scaffold(
      body: cubit.business == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return articlesListBuilder(
                    cubit.business?['articles'][index], context);
              },
            ),
    );
  }
}

