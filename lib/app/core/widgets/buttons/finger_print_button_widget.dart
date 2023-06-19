import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/button_base_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

import '../icons_widget.dart';

class FingerPrintButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const FingerPrintButtonWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBaseWidget(
      onPressed: onPressed,
      backgrounColor: onPressed != null
          ? context.appColors.green
          : context.appColors.disableBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: IconsWidget.fingerprint(
              size: 20,
              color: onPressed != null
                  ? context.appColors.black
                  : context.appColors.textButtonColor,
            ),
          ),
          TextWidget(
            'Use fingerprint',
            style: TextStyle(
              color: onPressed != null
                  ? context.appColors.black
                  : context.appColors.textButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
