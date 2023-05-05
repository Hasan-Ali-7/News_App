import 'package:flutter/material.dart';

Widget articlesListBuilder(articles, context) =>  Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: NetworkImage(articles['urlToImage'] ??
                  'https://media.istockphoto.com/vectors/loading-icon-isolated-on-blue-background-progress-bar-icon-flat-vector-id1092703422?k=20&m=1092703422&s=612x612&w=0&h=UWtVpC7z8wPMpoT9CQuEt2Ykz1mjbyHxduSpWJudksI='
                ),
              ),
            ),
            Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(7),
                child: Text(
                  '${articles['title']}',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(7),
                width: double.infinity,
                child: Text(
                  '${articles['publishedAt']}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.end,
                ),
            ),
          ],
        ),
      );
