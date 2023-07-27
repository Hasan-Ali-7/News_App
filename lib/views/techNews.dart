import 'package:News/components/techLocationDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/articleCard.dart';
import '../components/costumAppBar.dart';
import '../logic/cubits/techCubit/TechStates.dart';
import '../logic/cubits/techCubit/techCubit.dart';
import '../logic/models/article.dart';

class TechNews extends StatelessWidget {
  const TechNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TechNewsCubit(),
      child: BlocConsumer<TechNewsCubit, TechNewsState>(
        listener: (context, state) {},
        builder: (context, state) {
    
          List<Article>? techNews;
          try {
            BlocProvider.of<TechNewsCubit>(context).fetchTechArticles(BlocProvider.of<TechNewsCubit>(context).techLocation);
            techNews = BlocProvider.of<TechNewsCubit>(context).techArticles ?? [];
          } catch (e) {
            print(e);
          }
    
          return Column(
            children: [
              CostumeAppBar(
                title: 'Tech News',
                icon: Icons.language,
                iconPressed: () => techLocationDialog(context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: techNews!.length,
                  itemBuilder: (BuildContext context,  int index) {
                    return articleCardBuilder(
                      context: context,
                      article: techNews![index],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}