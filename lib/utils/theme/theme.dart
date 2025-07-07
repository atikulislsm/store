import 'package:flutter/material.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/theme/curstom%20theme/appbar_theme.dart';
import 'package:store/utils/theme/curstom%20theme/bottom_sheet_theme.dart';
import 'package:store/utils/theme/curstom%20theme/checkbox_theme.dart';
import 'package:store/utils/theme/curstom%20theme/elevated_button_theme.dart';
import 'package:store/utils/theme/curstom%20theme/outlined_button_theme.dart';
import 'package:store/utils/theme/curstom%20theme/text_field_theme.dart';
import 'package:store/utils/theme/curstom%20theme/text_theme.dart';

import 'curstom theme/chip_theme.dart' show TChipTheme;

class tAppTheme{
  tAppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    disabledColor: TColors.primary,
    primaryColor: Colors.blue,
    textTheme: TtextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
      chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    disabledColor: TColors.grey,
    primaryColor: Colors.blue,
    textTheme: TtextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
}