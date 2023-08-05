import 'package:flutter/material.dart';
import 'package:quiz_battle/config/theme/app_colors.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
  );
}




// class a implements ThemeData {
//   @override
//   // TODO: implement actionIconTheme
//   ActionIconThemeData? get actionIconTheme => throw UnimplementedError();

//   @override
//   // TODO: implement androidOverscrollIndicator
//   AndroidOverscrollIndicator? get androidOverscrollIndicator => throw UnimplementedError();

//   @override
//   // TODO: implement appBarTheme
//   AppBarTheme get appBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement applyElevationOverlayColor
//   bool get applyElevationOverlayColor => throw UnimplementedError();

//   @override
//   // TODO: implement backgroundColor
//   Color get backgroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement badgeTheme
//   BadgeThemeData get badgeTheme => throw UnimplementedError();

//   @override
//   // TODO: implement bannerTheme
//   MaterialBannerThemeData get bannerTheme => throw UnimplementedError();

//   @override
//   // TODO: implement bottomAppBarColor
//   Color get bottomAppBarColor => throw UnimplementedError();

//   @override
//   // TODO: implement bottomAppBarTheme
//   BottomAppBarTheme get bottomAppBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement bottomNavigationBarTheme
//   BottomNavigationBarThemeData get bottomNavigationBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement bottomSheetTheme
//   BottomSheetThemeData get bottomSheetTheme => throw UnimplementedError();

//   @override
//   // TODO: implement brightness
//   Brightness get brightness => throw UnimplementedError();

//   @override
//   // TODO: implement buttonBarTheme
//   ButtonBarThemeData get buttonBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement buttonTheme
//   ButtonThemeData get buttonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement canvasColor
//   Color get canvasColor => throw UnimplementedError();

//   @override
//   // TODO: implement cardColor
//   Color get cardColor => throw UnimplementedError();

//   @override
//   // TODO: implement cardTheme
//   CardTheme get cardTheme => throw UnimplementedError();

//   @override
//   // TODO: implement checkboxTheme
//   CheckboxThemeData get checkboxTheme => throw UnimplementedError();

//   @override
//   // TODO: implement chipTheme
//   ChipThemeData get chipTheme => throw UnimplementedError();

//   @override
//   // TODO: implement colorScheme
//   ColorScheme get colorScheme => throw UnimplementedError();

//   @override
//   ThemeData copyWith({bool? applyElevationOverlayColor, NoDefaultCupertinoThemeData? cupertinoOverrideTheme, Iterable<ThemeExtension>? extensions, InputDecorationTheme? inputDecorationTheme, MaterialTapTargetSize? materialTapTargetSize, PageTransitionsTheme? pageTransitionsTheme, TargetPlatform? platform, ScrollbarThemeData? scrollbarTheme, InteractiveInkFeatureFactory? splashFactory, bool? useMaterial3, VisualDensity? visualDensity, Brightness? brightness, Color? canvasColor, Color? cardColor, ColorScheme? colorScheme, Color? dialogBackgroundColor, Color? disabledColor, Color? dividerColor, Color? focusColor, Color? highlightColor, Color? hintColor, Color? hoverColor, Color? indicatorColor, Color? primaryColor, Color? primaryColorDark, Color? primaryColorLight, Color? scaffoldBackgroundColor, Color? secondaryHeaderColor, Color? shadowColor, Color? splashColor, Color? unselectedWidgetColor, IconThemeData? iconTheme, IconThemeData? primaryIconTheme, TextTheme? primaryTextTheme, TextTheme? textTheme, Typography? typography, ActionIconThemeData? actionIconTheme, AppBarTheme? appBarTheme, BadgeThemeData? badgeTheme, MaterialBannerThemeData? bannerTheme, BottomAppBarTheme? bottomAppBarTheme, BottomNavigationBarThemeData? bottomNavigationBarTheme, BottomSheetThemeData? bottomSheetTheme, ButtonBarThemeData? buttonBarTheme, ButtonThemeData? buttonTheme, CardTheme? cardTheme, CheckboxThemeData? checkboxTheme, ChipThemeData? chipTheme, DataTableThemeData? dataTableTheme, DatePickerThemeData? datePickerTheme, DialogTheme? dialogTheme, DividerThemeData? dividerTheme, DrawerThemeData? drawerTheme, DropdownMenuThemeData? dropdownMenuTheme, ElevatedButtonThemeData? elevatedButtonTheme, ExpansionTileThemeData? expansionTileTheme, FilledButtonThemeData? filledButtonTheme, FloatingActionButtonThemeData? floatingActionButtonTheme, IconButtonThemeData? iconButtonTheme, ListTileThemeData? listTileTheme, MenuBarThemeData? menuBarTheme, MenuButtonThemeData? menuButtonTheme, MenuThemeData? menuTheme, NavigationBarThemeData? navigationBarTheme, NavigationDrawerThemeData? navigationDrawerTheme, NavigationRailThemeData? navigationRailTheme, OutlinedButtonThemeData? outlinedButtonTheme, PopupMenuThemeData? popupMenuTheme, ProgressIndicatorThemeData? progressIndicatorTheme, RadioThemeData? radioTheme, SearchBarThemeData? searchBarTheme, SearchViewThemeData? searchViewTheme, SegmentedButtonThemeData? segmentedButtonTheme, SliderThemeData? sliderTheme, SnackBarThemeData? snackBarTheme, SwitchThemeData? switchTheme, TabBarTheme? tabBarTheme, TextButtonThemeData? textButtonTheme, TextSelectionThemeData? textSelectionTheme, TimePickerThemeData? timePickerTheme, ToggleButtonsThemeData? toggleButtonsTheme, TooltipThemeData? tooltipTheme, bool? fixTextFieldOutlineLabel, Brightness? primaryColorBrightness, AndroidOverscrollIndicator? androidOverscrollIndicator, Color? toggleableActiveColor, Color? selectedRowColor, Color? errorColor, Color? backgroundColor, Color? bottomAppBarColor}) {
//     // TODO: implement copyWith
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement cupertinoOverrideTheme
//   NoDefaultCupertinoThemeData? get cupertinoOverrideTheme => throw UnimplementedError();

//   @override
//   // TODO: implement dataTableTheme
//   DataTableThemeData get dataTableTheme => throw UnimplementedError();

//   @override
//   // TODO: implement datePickerTheme
//   DatePickerThemeData get datePickerTheme => throw UnimplementedError();

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     // TODO: implement debugFillProperties
//   }

//   @override
//   // TODO: implement dialogBackgroundColor
//   Color get dialogBackgroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement dialogTheme
//   DialogTheme get dialogTheme => throw UnimplementedError();

//   @override
//   // TODO: implement disabledColor
//   Color get disabledColor => throw UnimplementedError();

//   @override
//   // TODO: implement dividerColor
//   Color get dividerColor => throw UnimplementedError();

//   @override
//   // TODO: implement dividerTheme
//   DividerThemeData get dividerTheme => throw UnimplementedError();

//   @override
//   // TODO: implement drawerTheme
//   DrawerThemeData get drawerTheme => throw UnimplementedError();

//   @override
//   // TODO: implement dropdownMenuTheme
//   DropdownMenuThemeData get dropdownMenuTheme => throw UnimplementedError();

//   @override
//   // TODO: implement elevatedButtonTheme
//   ElevatedButtonThemeData get elevatedButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement errorColor
//   Color get errorColor => throw UnimplementedError();

//   @override
//   // TODO: implement expansionTileTheme
//   ExpansionTileThemeData get expansionTileTheme => throw UnimplementedError();

//   @override
//   T? extension<T>() {
//     // TODO: implement extension
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement extensions
//   Map<Object, ThemeExtension> get extensions => throw UnimplementedError();

//   @override
//   // TODO: implement filledButtonTheme
//   FilledButtonThemeData get filledButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement fixTextFieldOutlineLabel
//   bool get fixTextFieldOutlineLabel => throw UnimplementedError();

//   @override
//   // TODO: implement floatingActionButtonTheme
//   FloatingActionButtonThemeData get floatingActionButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement focusColor
//   Color get focusColor => throw UnimplementedError();

//   @override
//   // TODO: implement highlightColor
//   Color get highlightColor => throw UnimplementedError();

//   @override
//   // TODO: implement hintColor
//   Color get hintColor => throw UnimplementedError();

//   @override
//   // TODO: implement hoverColor
//   Color get hoverColor => throw UnimplementedError();

//   @override
//   // TODO: implement iconButtonTheme
//   IconButtonThemeData get iconButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement iconTheme
//   IconThemeData get iconTheme => throw UnimplementedError();

//   @override
//   // TODO: implement indicatorColor
//   Color get indicatorColor => throw UnimplementedError();

//   @override
//   // TODO: implement inputDecorationTheme
//   InputDecorationTheme get inputDecorationTheme => throw UnimplementedError();

//   @override
//   // TODO: implement listTileTheme
//   ListTileThemeData get listTileTheme => throw UnimplementedError();

//   @override
//   // TODO: implement materialTapTargetSize
//   MaterialTapTargetSize get materialTapTargetSize => throw UnimplementedError();

//   @override
//   // TODO: implement menuBarTheme
//   MenuBarThemeData get menuBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement menuButtonTheme
//   MenuButtonThemeData get menuButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement menuTheme
//   MenuThemeData get menuTheme => throw UnimplementedError();

//   @override
//   // TODO: implement navigationBarTheme
//   NavigationBarThemeData get navigationBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement navigationDrawerTheme
//   NavigationDrawerThemeData get navigationDrawerTheme => throw UnimplementedError();

//   @override
//   // TODO: implement navigationRailTheme
//   NavigationRailThemeData get navigationRailTheme => throw UnimplementedError();

//   @override
//   // TODO: implement outlinedButtonTheme
//   OutlinedButtonThemeData get outlinedButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement pageTransitionsTheme
//   PageTransitionsTheme get pageTransitionsTheme => throw UnimplementedError();

//   @override
//   // TODO: implement platform
//   TargetPlatform get platform => throw UnimplementedError();

//   @override
//   // TODO: implement popupMenuTheme
//   PopupMenuThemeData get popupMenuTheme => throw UnimplementedError();

//   @override
//   // TODO: implement primaryColor
//   Color get primaryColor => throw UnimplementedError();

//   @override
//   // TODO: implement primaryColorBrightness
//   Brightness get primaryColorBrightness => throw UnimplementedError();

//   @override
//   // TODO: implement primaryColorDark
//   Color get primaryColorDark => throw UnimplementedError();

//   @override
//   // TODO: implement primaryColorLight
//   Color get primaryColorLight => throw UnimplementedError();

//   @override
//   // TODO: implement primaryIconTheme
//   IconThemeData get primaryIconTheme => throw UnimplementedError();

//   @override
//   // TODO: implement primaryTextTheme
//   TextTheme get primaryTextTheme => throw UnimplementedError();

//   @override
//   // TODO: implement progressIndicatorTheme
//   ProgressIndicatorThemeData get progressIndicatorTheme => throw UnimplementedError();

//   @override
//   // TODO: implement radioTheme
//   RadioThemeData get radioTheme => throw UnimplementedError();

//   @override
//   // TODO: implement scaffoldBackgroundColor
//   Color get scaffoldBackgroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement scrollbarTheme
//   ScrollbarThemeData get scrollbarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement searchBarTheme
//   SearchBarThemeData get searchBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement searchViewTheme
//   SearchViewThemeData get searchViewTheme => throw UnimplementedError();

//   @override
//   // TODO: implement secondaryHeaderColor
//   Color get secondaryHeaderColor => throw UnimplementedError();

//   @override
//   // TODO: implement segmentedButtonTheme
//   SegmentedButtonThemeData get segmentedButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement selectedRowColor
//   Color get selectedRowColor => throw UnimplementedError();

//   @override
//   // TODO: implement shadowColor
//   Color get shadowColor => throw UnimplementedError();

//   @override
//   // TODO: implement sliderTheme
//   SliderThemeData get sliderTheme => throw UnimplementedError();

//   @override
//   // TODO: implement snackBarTheme
//   SnackBarThemeData get snackBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement splashColor
//   Color get splashColor => throw UnimplementedError();

//   @override
//   // TODO: implement splashFactory
//   InteractiveInkFeatureFactory get splashFactory => throw UnimplementedError();

//   @override
//   // TODO: implement switchTheme
//   SwitchThemeData get switchTheme => throw UnimplementedError();

//   @override
//   // TODO: implement tabBarTheme
//   TabBarTheme get tabBarTheme => throw UnimplementedError();

//   @override
//   // TODO: implement textButtonTheme
//   TextButtonThemeData get textButtonTheme => throw UnimplementedError();

//   @override
//   // TODO: implement textSelectionTheme
//   TextSelectionThemeData get textSelectionTheme => throw UnimplementedError();

//   @override
//   // TODO: implement textTheme
//   TextTheme get textTheme => throw UnimplementedError();

//   @override
//   // TODO: implement timePickerTheme
//   TimePickerThemeData get timePickerTheme => throw UnimplementedError();

//   @override
//   DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) {
//     // TODO: implement toDiagnosticsNode
//     throw UnimplementedError();
//   }

//   @override
//   String toStringShort() {
//     // TODO: implement toStringShort
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement toggleButtonsTheme
//   ToggleButtonsThemeData get toggleButtonsTheme => throw UnimplementedError();

//   @override
//   // TODO: implement toggleableActiveColor
//   Color get toggleableActiveColor => throw UnimplementedError();

//   @override
//   // TODO: implement tooltipTheme
//   TooltipThemeData get tooltipTheme => throw UnimplementedError();

//   @override
//   // TODO: implement typography
//   Typography get typography => throw UnimplementedError();

//   @override
//   // TODO: implement unselectedWidgetColor
//   Color get unselectedWidgetColor => throw UnimplementedError();

//   @override
//   // TODO: implement useMaterial3
//   bool get useMaterial3 => throw UnimplementedError();

//   @override
//   // TODO: implement visualDensity
//   VisualDensity get visualDensity => throw UnimplementedError();
// }