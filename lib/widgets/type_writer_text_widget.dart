import 'dart:async';
import 'package:flutter/material.dart';

class TypeWriterTextWidget extends StatefulWidget {
  const TypeWriterTextWidget(
      {super.key,
      required this.text,
      this.duration = const Duration(milliseconds: 200)});
  final Duration duration;
  final String text;

  @override
  State<TypeWriterTextWidget> createState() => _TypeWriterTextWidgetState();
}

class _TypeWriterTextWidgetState extends State<TypeWriterTextWidget> {
  int _charCount = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(widget.duration, (Timer timer) {
      setState(() {
        // _charCount = (_charCount + 1) % (widget.text.length + 1);
        _charCount++;
      });
      if (_charCount > widget.text.length) {
        _timer?.cancel();

        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            _charCount = 0;

            startTimer();
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _charCount > widget.text.length
          ? widget.text
          : widget.text.substring(0, _charCount),
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
