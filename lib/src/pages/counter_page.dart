import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _cout = 0;

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: () => _reset(),
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () => _remove(),
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          onPressed: () => _add(),
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _add() {
    setState(() => _cout++);
  }

  void _remove() {
    setState(() => _cout--);
  }

  void _reset() {
    setState(() => _cout = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Counter'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of taps:', style: _textStyle),
            Text('$_cout', style: _textStyle)
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }
}
