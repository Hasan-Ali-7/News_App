import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_Cubit, App_State>(
      listener: (context, state) {},
      builder: (context, state) {

      List<NoteModel>? notes;
      try {
        BlocProvider.of<App_Cubit>(context).fetchNote();
        notes = BlocProvider.of<App_Cubit>(context).notes?? [];
      } catch (e) {
        print(e);
      }

        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            floatingActionButton:
                FloatingActionButton(
              onPressed: () => {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                7)),
                    context: context,
                    builder: (context) {
                      return const AddNote();
                    })
              },
              backgroundColor: kColor,
              focusColor: kColor,
              hoverColor: kColor,
              child: const Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              ),
            ),
            body: Column(
              children: [
                const CostumeAppBar(
                  title: 'Notes',
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: notes!.length,
                    itemBuilder: (BuildContext context,  int index) {
                      return Note(
                        note: notes![index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
