//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:geolocator_web/geolocator_web.dart';
import 'package:location_web/location_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FlutterNativeSplashWeb.registerWith(registrar);
  GeolocatorPlugin.registerWith(registrar);
  LocationWebPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
