import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasbeeh/utils/theme/colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
  useMaterial3: true,
  colorScheme: const ColorScheme(
    primary: TasbeehColor.primary,
    onPrimary: TasbeehColor.onPrimary,
    primaryContainer: TasbeehColor.primaryContainer,
    onPrimaryContainer: TasbeehColor.onPrimaryContainer,
    secondary: TasbeehColor.secondary,
    onSecondary: TasbeehColor.onSecondary,
    secondaryContainer: TasbeehColor.secondaryContainer,
    onSecondaryContainer: TasbeehColor.onSecondaryContainer,
    tertiary: TasbeehColor.tertiary,
    onTertiary: TasbeehColor.onTertiary,
    tertiaryContainer: TasbeehColor.tertiaryContainer,
    onTertiaryContainer: TasbeehColor.onTertiaryContainer,
    surface: TasbeehColor.surface,
    onSurface: TasbeehColor.onSurface,
    surfaceVariant: TasbeehColor.surfaceVariant,
    onSurfaceVariant: TasbeehColor.onSurfaceVariant,
    background: TasbeehColor.background,
    onBackground: TasbeehColor.onBackground,
    error: TasbeehColor.error,
    onError: TasbeehColor.onError,
    errorContainer: TasbeehColor.errorContainer,
    onErrorContainer: TasbeehColor.onErrorContainer,
    brightness: TasbeehColor.brightness,
    outline: TasbeehColor.outline,
    outlineVariant: TasbeehColor.outlineVariant,
    shadow: TasbeehColor.shadow,
    scrim: TasbeehColor.scrim,
  ),
);
