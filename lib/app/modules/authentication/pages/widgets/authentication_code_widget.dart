import 'package:flutter/material.dart';

import '../../../../core/widgets/text_field_rounded_widget.dart';

class AuthenticationCodeWidget extends StatelessWidget {
  const AuthenticationCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFieldRoundedWidget(
              alignment: TextAlign.center,
              keyboardType: TextInputType.number,
              contentPadding: EdgeInsets.zero,
              fontSize: 32,
              onChanged: (value) {
                if ((value?.length ?? 0) >= 1) {
                  primaryFocus?.nextFocus();
                }
              },
              textLenght: 1,
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(
            child: TextFieldRoundedWidget(
              alignment: TextAlign.center,
              contentPadding: EdgeInsets.zero,
              fontSize: 32,
              textLenght: 1,
              onChanged: (value) {
                if ((value?.length ?? 0) >= 1) {
                  primaryFocus?.nextFocus();
                }
              },
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(
            child: TextFieldRoundedWidget(
              alignment: TextAlign.center,
              fontSize: 32,
              contentPadding: EdgeInsets.zero,
              textLenght: 1,
              onChanged: (value) {
                if ((value?.length ?? 0) >= 1) {
                  primaryFocus?.nextFocus();
                }
              },
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(
            child: TextFieldRoundedWidget(
              alignment: TextAlign.center,
              fontSize: 32,
              contentPadding: EdgeInsets.zero,
              textLenght: 1,
              onChanged: (value) {
                if ((value?.length ?? 0) >= 1) {
                  primaryFocus?.unfocus();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
