import 'package:News/components/allLocationDialog.dart';
import 'package:News/components/articleCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/costumAppBar.dart';
import '../logic/cubits/allCubit/allNewsStates.dart';
import '../logic/cubits/allCubit/allNewscubit.dart';
import '../logic/models/article.dart';

class AllNews extends StatelessWidget {
  const AllNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllNewsCubit(),
      child: BlocConsumer<AllNewsCubit, AllNewsState>(
        listener: (context, state) {},
        builder: (context, state) {
    
          List<Article>? allNews;
          try {
            BlocProvider.of<AllNewsCubit>(context).fetchAllArticles(BlocProvider.of<AllNewsCubit>(context).allLocation);
            allNews = BlocProvider.of<AllNewsCubit>(context).allArticles ?? [];
          } catch (e) {
            print(e);
          }
    
          return Column(
            children: [
              CostumeAppBar(
                title: 'All News',
                icon: Icons.language,
                iconPressed: () => allLocationDialog(context),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allNews!.length,
                  itemBuilder: (BuildContext context,  int index) {
                    return articleCardBuilder(
                      context: context,
                      article: allNews![index],
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