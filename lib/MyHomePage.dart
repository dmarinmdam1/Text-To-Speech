import 'package:flutter/material.dart';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  VoiceController _voiceController;

  String text = '';

  @override
  void initState() {
    _voiceController = FlutterTextToSpeech.instance.voiceController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _voiceController.stop();
  }

  _playVoice() {
    _voiceController.init().then((_) {
      if (text != '') {
        _voiceController.setLanguage("es-ES");
        _voiceController.speak(
          text,
          VoiceControllerOptions(),
        );
      }
    });
  }

  _stopVoice() {
    _voiceController.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Introduce texto para reproducir en voz',
                ),
                onChanged: (textFieldText) {
                  text = textFieldText;
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              onPressed: _playVoice,
              color: Colors.green,
              child: Text('Reproducir texto en voz'),
            ),
            RaisedButton(
              onPressed: _stopVoice,
              color: Colors.red,
              child: Text('Parar reproducción'),
            ),
          ],
        ),
      ),
    );
  }
}
