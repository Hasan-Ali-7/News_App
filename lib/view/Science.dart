import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubit.dart';
import '../logic/states.dart';
import '../shared/components/components.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);

    return BlocConsumer<NewsCubit,NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: cubit.scienceArticle == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: cubit.scienceArticle!.length,
                  itemBuilder:
                      (BuildContext context,
                          int index) {
                    return articlesListBuilder(
                        cubit.scienceArticle![index],
                        context);
                  },
                ),
        );
      },
    );
  }
}

