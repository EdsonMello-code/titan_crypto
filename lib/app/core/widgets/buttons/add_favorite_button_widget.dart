import 'package:flutter/material.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/button_base_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

import '../icons_widget.dart';

class AddFavoriteButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddFavoriteButtonWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBaseWidget(
      onPressed: onPressed,
      border: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
        side: const BorderSide(
          color: Color(0xFF3E474F),
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
      backgrounColor: context.appColors.disableBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: IconsWidget.addCircle(
              size: 20,
              color: const Color(0xFF3E474F),
            ),
          ),
          const TextWidget(
            'Add Favorite',
            style: TextStyle(
              color: Color(0xFF3E474F),
            ),
          ),
        ],
      ),
    );
  }
}
