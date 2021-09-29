import 'package:flutter/material.dart';
import 'package:tetris_mobile_game_flutter/game.dart';
import 'package:tetris_mobile_game_flutter/next_block.dart';
import 'package:tetris_mobile_game_flutter/score_bar.dart';

class Tetris extends StatefulWidget {
  Tetris({Key? key}) : super(key: key);

  @override
  _TetrisState createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TETRIS'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent[700],
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          ScoreBar(),
          Expanded(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                      child: Game(),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                      child: NextBloc(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
