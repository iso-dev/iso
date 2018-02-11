/**
 * From https://gist.github.com/mikemimik/5ac2fa98fe6d132098603c1bd40263d5
 *
 * Creating custom color palettes is part of creating a custom app. The idea is to create
 * your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
 * object with those colors you just defined.
 *
 * Resource:
 * A good resource would be this website: http://mcg.mbitson.com/
 * You simply need to put in the colour you wish to use, and it will generate all shades
 * for you. Your primary colour will be the `500` value.
 *
 * Colour Creation:
 * In order to create the custom colours you need to create a `Map<int, Color>` object
 * which will have all the shade values. `const Color(0xFF...)` will be how you create
 * the colours. The six character hex code is what follows. If you wanted the colour
 * #114488 or #D39090 as primary colours in your theme, then you would have
 * `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
 *
 * Usage:
 * In order to use this newly created theme or even the colours in it, you would just
 * `import` this file in your project, anywhere you needed it.
 * `import 'path/to/theme.dart';`
 */

import 'package:flutter/material.dart';

const IsoDarkPrimary = 0x355C7D;
const IsoDarkSecondary = 0x6C5B7B;
const IsoLightPrimary = 0xF67280;
const IsoLightSecondary = 0xC06C84;
const IsoPrimary = IsoLightPrimary;

final ThemeData IsoThemeData = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: IsoMaterialColor,
    primaryColor: IsoMaterialColor.shade500,
    primaryColorBrightness: Brightness.light,
    accentColor: new Color(IsoDarkPrimary),
    accentColorBrightness: Brightness.light
);

 const MaterialColor IsoMaterialColor = const MaterialColor(
   IsoPrimary,
  const <int, Color>{
    50: const Color(0xFFE9EB),
    100: const Color(0xF9C8CD),
    200: const Color(0xF9B9C0),
    300: const Color(0xF6ACB3),
    400: const Color(0xF6909B),
    500: const Color(IsoPrimary),
    600: const Color(0xF65566),
    700: const Color(0xF43F52),
    800: const Color(0xF22238),
    900: const Color(0xDD031A),
  },
);