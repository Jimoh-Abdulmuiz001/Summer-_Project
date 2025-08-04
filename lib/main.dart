import 'package:flutter/material.dart';
import 'package:summer_project/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}


