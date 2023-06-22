import 'package:flutter/material.dart';

import '../../services/local_auth/debounce/debounce_service.dart';
import '../../services/local_auth/debounce/debounce_service_impl.dart';

class IconButtonWidget extends StatefulWidget {
  final Widget? child;
  final VoidCallback? onPressed;

  const IconButtonWidget({
    super.key,
    this.child,
    this.onPressed,
  });

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  final DebounceService debounceService = DebounceServiceImpl();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debounceService(widget.onPressed ?? () {});
      },
      child: widget.child,
    );
  }
}
