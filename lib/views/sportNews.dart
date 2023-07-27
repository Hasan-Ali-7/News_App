import 'package:News/components/sportLocationDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/articleCard.dart';
import '../components/costumAppBar.dart';
import '../logic/cubits/sportCubit/SportStates.dart';
import '../logic/cubits/sportCubit/sportCubit.dart';
import '../logic/models/article.dart';

class SportNews extends StatelessWidget {
  const SportNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SportNewsCubit(),
      child: BlocConsumer<SportNewsCubit, SportNewsState>(
        listener: (context, state) {},
        builder: (context, state) {
    
          List<Article>? sportNews;
          try {
            BlocProvider.of<SportNewsCubit>(context).fetchSportArticles(BlocProvider.of<SportNewsCubit>(context).sportLocation);
            sportNews = BlocProvider.of<SportNewsCubit>(context).sportArticles ?? [];
          } catch (e) {
            print(e);
          }
    
          return Column(
            children: [
              CostumeAppBar(
                title: 'Sport News',
                icon: Icons.language,
                iconPressed: () => sportLocationDialog(context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sportNews!.length,
                  itemBuilder: (BuildContext context,  int index) {
                    return articleCardBuilder(
                      context: context,
                      article: sportNews![index],
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