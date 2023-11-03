import '../theme/theme_data/dark.dart';
import '../theme/theme_data/light.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: lightTheme,
    AppTheme.darkTheme: darkTheme
  };
}
