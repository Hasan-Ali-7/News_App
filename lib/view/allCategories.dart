import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubit.dart';
import '../logic/states.dart';
import '../shared/components/components.dart';

class AllScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    return BlocConsumer<NewsCubit,NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: cubit.allArticle == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: cubit.allArticle!.length,
                  itemBuilder:
                      (BuildContext context,
                          int index) {
                    return articlesListBuilder(
                        cubit.allArticle![index],
                        context);
                  },
                ),
        );
      },
    );
  }

}