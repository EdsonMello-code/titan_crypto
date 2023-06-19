import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

extension AppThemeExtension on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}
