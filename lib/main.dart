import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(TopTenEnglishWords());

class TopTenEnglishWords extends StatelessWidget {
  dynamic wordsList;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Palavras'),
                      const SizedBox(height: 8,),
                      getList(0),
                      getList(1),
                      getList(2),
                      getList(3),
                      getList(4),
                      getList(5),
                      getList(6),
                      getList(7),
                      getList(8),
                      getList(9),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Silabas'),
                      const SizedBox(height: 8,),
                      getSyllables(0),
                      getSyllables(1),
                      getSyllables(2),
                      getSyllables(3),
                      getSyllables(4),
                      getSyllables(5),
                      getSyllables(6),
                      getSyllables(7),
                      getSyllables(8),
                      getSyllables(9),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  List<String> words = [];

  Widget getList(int n) {
    words = nouns.take(10).toList();
    words.toList();

    return Text(words[n]);
  }

  Widget getSyllables(int n){
    List<String> sylables = [];
    for(final word in words){
      int s = syllables(word);
      sylables.add(s.toString());
    }
    return Text('${sylables[n]}');
  }

}
