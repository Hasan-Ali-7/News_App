import 'package:flutter/material.dart';
import 'package:news/shared/components/components.dart';
import 'shared/cubit/cubit.dart';
import 'shared/cubit/states.dart';

class tecno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    cubit.getTech();

    return RefreshIndicator(
      onRefresh: () async {
        Future.delayed(Duration(seconds: 5));
        await cubit.getTech().then(() {
          cubit.emit(GetTechNews());
        });
      },
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      child: Scaffold(
        body: cubit.tech == null
            ? ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text('Pull To Refresh'),
                  );
                },
              )
            : ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return articlesListBuilder(
                      cubit.tech?['articles'][index], context);
                },
              ),
      ),
      color: Colors.white,
      backgroundColor: Colors.purple,
    );
    // Scaffold(
    //   body: cubit.tech == null
    //       ? Center(
    //           child: Text('Pull To Refresh'),
    //         )
    //       : ListView.builder(
    //           itemCount: 20,
    //           itemBuilder: (BuildContext context, int index) {
    //             return articlesListBuilder(
    //                 cubit.tech?['articles'][index], context);
    //           },
    //         ),
    // );
  }
}
