import 'package:News/components/scienceLocationDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/articleCard.dart';
import '../components/costumAppBar.dart';
import '../logic/cubits/scienceCubit/scienceCubit.dart';
import '../logic/cubits/scienceCubit/ScienceStates.dart';
import '../logic/models/article.dart';

class ScienceNews extends StatelessWidget {
  const ScienceNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScienceNewsCubit(),
      child: BlocConsumer<ScienceNewsCubit, ScienceNewsState>(
        listener: (context, state) {},
        builder: (context, state) {
    
          List<Article>? scienceNews;
          try {
            BlocProvider.of<ScienceNewsCubit>(context).fetchScienceArticles(BlocProvider.of<ScienceNewsCubit>(context).scienceLocation);
            scienceNews = BlocProvider.of<ScienceNewsCubit>(context).scienceArticles ?? [];
          } catch (e) {
            print(e);
          }
    
          return Column(
            children: [
              CostumeAppBar(
                title: 'Science News',
                icon: Icons.language,
                iconPressed: () => scienceLocationDialog(context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: scienceNews!.length,
                  itemBuilder: (BuildContext context,  int index) {
                    return articleCardBuilder(
                      context: context,
                      article: scienceNews![index],
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