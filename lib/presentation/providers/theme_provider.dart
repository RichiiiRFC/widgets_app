import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Listado de colores inmutable
final colorsListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
        (ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme>{
  ThemeNotifier() : super(AppTheme());


  void toggleDarkMode() {
    state = state.copyWidth(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int color) {
    state = state.copyWidth(selectedColor: color);

  }


}



