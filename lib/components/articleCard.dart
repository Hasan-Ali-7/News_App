import 'package:News/logic/models/article.dart';
import 'package:News/views/readFullNews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubits/appCubit/app_cubit.dart';

Widget articleCardBuilder({ required Article article, required context}) => GestureDetector(
  onTap: () => Navigator.push(
    context, 
    MaterialPageRoute(
      builder: (context) => WebViewContainer(article.articleURL ?? 'https://www.google.com'),
    )
  ),
  child: Container(
    margin: const EdgeInsets.only( top: 10, left: 10, right: 10,),
    width: double.infinity,
    decoration: BoxDecoration(
      color: BlocProvider.of<App_Cubit>(context).isDark
          ? Colors.grey[900]
          : Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            height: 250,
            width: double.infinity,
            image: NetworkImage( article.image ?? 'https://media.istockphoto.com/vectors/loading-icon-isolated-on-blue-background-progress-bar-icon-flat-vector-id1092703422?k=20&m=1092703422&s=612x612&w=0&h=UWtVpC7z8wPMpoT9CQuEt2Ykz1mjbyHxduSpWJudksI='
            ),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            article.title ?? '',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: BlocProvider.of<App_Cubit>(context).isDark
                  ? Colors.white
                  : Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom : 10, left : 10, right : 10),
          child: Text(
            article.description ?? '',
            style: TextStyle(
              fontSize: 18,
              color: BlocProvider.of<App_Cubit>(context).isDark
                  ? Colors.white
                  : Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Container(
          width: double.infinity,
          padding:  const EdgeInsets.all(10),
          child: Text(
            article.time.toString().substring(0, 16),
            style: TextStyle(
              fontSize: 14,
              color: BlocProvider.of<App_Cubit>(context).isDark
                  ? Colors.white
                  : Colors.black,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    ),
  ),
);