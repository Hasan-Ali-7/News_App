import 'package:News/components/economyLocationDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/articleCard.dart';
import '../components/costumAppBar.dart';
import '../logic/cubits/economyCubit/economyCubit.dart';
import '../logic/cubits/economyCubit/economyStates.dart';
import '../logic/models/article.dart';

class EconomyNews extends StatelessWidget {
  const EconomyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EconomyNewsCubit(),
      child: BlocConsumer<EconomyNewsCubit, EconomyNewsState>(
        listener: (context, state) {},
        builder: (context, state) {
    
          List<Article>? economyNews;
          try {
            BlocProvider.of<EconomyNewsCubit>(context).fetchEconomyArticles(BlocProvider.of<EconomyNewsCubit>(context).economyLocation);
            economyNews = BlocProvider.of<EconomyNewsCubit>(context).economyArticles ?? [];
          } catch (e) {
            print(e);
          }
    
          return Column(
            children: [
              CostumeAppBar(
                title: 'Economy News',
                icon: Icons.language,
                iconPressed: () => economyLocationDialog(context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: economyNews!.length,
                  itemBuilder: (BuildContext context,  int index) {
                    return articleCardBuilder(
                      context: context,
                      article: economyNews![index],
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