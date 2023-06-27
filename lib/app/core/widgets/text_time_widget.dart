import 'dart:async';

import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

import '../mixins/format_in_two_digit_mixin.dart';

class TextTimeWidget extends StatefulWidget {
  final String text;
  final DateTime dateTime;

  final TextStyle? style;

  const TextTimeWidget({
    super.key,
    required this.text,
    required this.dateTime,
    this.style,
  });

  @override
  State<TextTimeWidget> createState() => _TextTimeWidgetState();
}

class _TextTimeWidgetState extends State<TextTimeWidget>
    with FormatInTwoDigitMixin {
  @override
  void initState() {
    super.initState();
    currentDateTime = widget.dateTime;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setCurrentDuration();
    });
  }

  late DateTime currentDateTime;
  late final Timer timer;

  String _formatTime(DateTime dateTime) {
    final dateTimeFormated =
        "${formatIntTwoDigitString(dateTime.minute.remainder(60))}:${formatIntTwoDigitString(dateTime.second.remainder(60))}";

    return dateTimeFormated;
  }

  void setCurrentDuration() {
    final dateSubtracted = currentDateTime.subtract(
      const Duration(seconds: 1),
    );

    // if (mounted) {
    setState(() {
      currentDateTime = dateSubtracted;
    });
    // }

    if (currentDateTime.minute <= 0 && currentDateTime.second <= 0) {
      timer.cancel();
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      '${widget.text}${_formatTime(currentDateTime)}',
      style: widget.style ??
          const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontSize: 13,
          ),
    );
  }
}
