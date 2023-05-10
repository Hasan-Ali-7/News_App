import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'logic/cubit.dart';
import 'shared/cache/hive.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    NewsCubit cubit = NewsCubit();
        
      return Scaffold(
        body: Column(
          children: [
            Card(
              color: cubit.isDark
                  ? Colors.grey[900]
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                          10)),
              margin:
                  const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 8),
              child: Padding(
                padding: const EdgeInsets
                        .symmetric(
                    horizontal: 10,
                    vertical: 15),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    Text(
                      'Theme :',
                      style: TextStyle(
                        fontSize: 20,
                        color: cubit.isDark
                            ? Colors.white
                            : Colors.black,
                        letterSpacing: .4,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: [
                        Expanded(
                          child:
                              GestureDetector(
                            onTap: () => cubit
                                    .isDark
                                ? cubit
                                    .changeAppMode()
                                : null,
                            child: Container(
                              padding: const EdgeInsets
                                      .symmetric(
                                  horizontal:
                                      15,
                                  vertical:
                                      10),
                              decoration:
                                  BoxDecoration(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                children: [
                                  const Text(
                                    'Light',
                                    style:
                                        TextStyle(
                                      fontSize:
                                          18,
                                      fontWeight:
                                          FontWeight.bold,
                                      letterSpacing:
                                          2,
                                      color: Colors
                                          .white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons
                                        .brightness_5_rounded,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child:
                              GestureDetector(
                            onTap: () => cubit
                                    .isDark
                                ? null
                                : cubit
                                    .changeAppMode(),
                            child: Container(
                              padding: const EdgeInsets
                                      .symmetric(
                                  horizontal:
                                      15,
                                  vertical:
                                      10),
                              decoration:
                                  BoxDecoration(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceAround,
                                children: [
                                  Text(
                                    'Dark',
                                    style:
                                        TextStyle(
                                      fontSize:
                                          18,
                                      fontWeight:
                                          FontWeight.bold,
                                      letterSpacing:
                                          .4,
                                      color:  Colors.blue,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons
                                        .brightness_2_rounded,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: cubit.isDark
                  ? Colors.grey[900]
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                          10)),
              margin:
                  const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 8),
              child: ListTile(
                leading: Icon(
                    Icons.language_outlined,
                    size: 25,
                    color: cubit.isDark
                        ? Colors.white
                        : Colors.grey[800]),
                title: Text(
                  'Languages',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: .4,
                      color: cubit.isDark
                          ? Colors.white
                          : Colors.black),
                ),
                onTap: () =>
                    cubit.changeAppMode(),
              ),
            ),
            Card(
              color: cubit.isDark
                  ? Colors.grey[900]
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                          10)),
              margin:
                  const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 8),
              child: ListTile(
                leading: Icon(
                    Icons.receipt_rounded,
                    size: 25,
                    color: cubit.isDark
                        ? Colors.white
                        : Colors.grey[800]),
                title: Text(
                  'Terms & Condisions',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: .4,
                      color: cubit.isDark
                          ? Colors.white
                          : Colors.black),
                ),
                onTap: () =>
                    cubit.changeAppMode(),
              ),
            ),
            Card(
              color: cubit.isDark
                  ? Colors.grey[900]
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                          10)),
              margin:
                  const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 8),
              child: ListTile(
                leading: Icon(
                    Icons
                        .help_outline_outlined,
                    size: 25,
                    color: cubit.isDark
                        ? Colors.white
                        : Colors.grey[800]),
                title: Text(
                  'Help',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: .4,
                      color: cubit.isDark
                          ? Colors.white
                          : Colors.black),
                ),
                onTap: () =>
                    cubit.changeAppMode(),
              ),
            ),
            
            MaterialButton(
              onPressed: () =>
                  cubit.changeAppMode(),
              child: Text('hello'),
              color: Colors.orange,
            ),
          ],
        ),
      );
    }
}
