import 'package:flutter/material.dart';
import '../../logic/cubit.dart';

Widget articlesListBuilder(art, context) => Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: NewsCubit().isDark
                  ? Colors.grey[800]
                  : Colors.grey[200],
              borderRadius:
                  BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Container(
                    height: 230,
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(
                        image: NetworkImage(art.image ??
                          'https://media.istockphoto.com/vectors/loading-icon-isolated-on-blue-background-progress-bar-icon-flat-vector-id1092703422?k=20&m=1092703422&s=612x612&w=0&h=UWtVpC7z8wPMpoT9CQuEt2Ykz1mjbyHxduSpWJudksI='
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.circular(
                              7.0),
                    )),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: NewsCubit().isDark
                        ? Colors.grey[900]
                        : Colors.white,
                    borderRadius:
                        const BorderRadius.only(
                            bottomLeft:
                                Radius.circular(
                                    7),
                            bottomRight:
                                Radius.circular(
                                    7)),
                  ),
                  padding:
                      const EdgeInsets.all(7),
                  child: Text(
                    '${art.title}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: NewsCubit().isDark
                          ? Colors.white
                          : Colors.black,
                    ),
                    overflow:
                        TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: NewsCubit().isDark
                        ? Colors.grey[850]
                        : Colors.grey[100],
                    borderRadius:
                        const BorderRadius.only(
                      bottomLeft:
                          Radius.circular(7),
                      bottomRight:
                          Radius.circular(7),
                    ),
                  ),
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    "${art.description}",
                    style: TextStyle(
                      fontSize: 16,
                      color: NewsCubit().isDark
                          ? Colors.white
                          : Colors.black,
                    ),
                    overflow:
                        TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      Text(
                        '${art.auther}',
                        style: TextStyle(
                          fontSize: 14,
                          color: NewsCubit().isDark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      Text(
                        '${art.time}'
                            .substring(0, 10),
                        style: TextStyle(
                          fontSize: 14,
                          color: NewsCubit().isDark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );