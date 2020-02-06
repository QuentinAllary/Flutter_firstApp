import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:transparent_image/transparent_image.dart';
import 'package:uri/uri.dart';
import 'package:http/http.dart' as http;

import 'Add.dart';
import 'BottomNavbar.dart';
import 'Favorite.dart';
import 'Gallery.dart';
import 'Profile.dart';
import 'Search.dart';
import 'ImgurLogin.dart';

main() => runApp(MaterialApp(
  home: ImgurLogin(),
  ));