import 'package:flutter/material.dart';

Widget articlesListBuilder(art, context) =>  Container(
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
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(art.image ??
                    'https://media.istockphoto.com/vectors/loading-icon-isolated-on-blue-background-progress-bar-icon-flat-vector-id1092703422?k=20&m=1092703422&s=612x612&w=0&h=UWtVpC7z8wPMpoT9CQuEt2Ykz1mjbyHxduSpWJudksI='
                  ),
                  fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              )
            ),
            Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(7),
                child: Text(
                  '${art.title }',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(7),
                child: Text(
                  '${art.description}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${art.auther}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    '${art.time}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
