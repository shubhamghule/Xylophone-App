import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber){
    // player as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$noteNumber.wav');
  }

  Expanded buildDiv({ MaterialColor colorGiven ,int noteNumber = 1})
  {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(noteNumber);
        },
        child: Container(
          color:colorGiven,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildDiv(colorGiven : Colors.red,noteNumber : 1),
              buildDiv(colorGiven : Colors.orange,noteNumber : 2),
              buildDiv(colorGiven : Colors.yellow,noteNumber : 3),
              buildDiv(colorGiven : Colors.green,noteNumber : 4),
              buildDiv(colorGiven : Colors.blue,noteNumber : 5),
              buildDiv(colorGiven : Colors.indigo,noteNumber : 6),
              buildDiv(colorGiven : Colors.purple,noteNumber : 7),
            ],
          ),
        ),
      ),
    );
  }
}
