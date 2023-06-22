import 'dart:async';

import 'package:flutter/services.dart';
import 'package:titan_crypto/app/core/services/local_auth/debounce/debounce_service.dart';

class DebounceServiceImpl implements DebounceService {
  Timer? timer;

  DebounceServiceImpl();

  @override
  void call(VoidCallback run) {
    timer?.cancel();

    timer = Timer(const Duration(seconds: 1), run);
  }
}
