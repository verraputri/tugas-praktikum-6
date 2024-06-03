import 'package:flutter/material.dart';
import 'package:modul_3/providers/note_provider.dart';
import 'package:provider/provider.dart';
import 'package:modul_3/components/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final noteState = context.watch<NoteProvider>();
    final noteList = noteState.noteList;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Note App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addNote');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<NoteProvider>(
          builder: (context, value, child) {
            return SizedBox(
                child: (!value.noteList.isNotEmpty)
                    ? const Center(child: Text('Note is Empty'))
                    : GridView.count(
                        crossAxisCount: 2,
                        padding: const EdgeInsets.all(16.0),
                        childAspectRatio: 8.0 / 9.0,
                        children:
                            List.generate(value.noteList.length, (int index) {
                          return NoteCard(
                            title: value.noteList[index].title,
                            note: value.noteList[index].note,
                            description: value.noteList[index].description,
                          );
                        }),
                      ));
          },
        ),
      ),
    );
  }
}
