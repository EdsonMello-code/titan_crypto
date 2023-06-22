import 'package:flutter/widgets.dart';
import 'package:titan_crypto/app/core/extensions/app_theme_extension.dart';
import 'package:titan_crypto/app/core/widgets/buttons/button_base_widget.dart';
import 'package:titan_crypto/app/core/widgets/text_widget.dart';

class FacebookButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const FacebookButtonWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBaseWidget(
      onPressed: onPressed,
      backgrounColor: context.appColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/facebook.png'),
          const SizedBox(
            width: 8,
          ),
          const TextWidget(
            'Facebook',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
