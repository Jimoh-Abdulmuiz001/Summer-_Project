import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summer_project/routing/router.dart';
class MyApp extends ConsumerWidget{
const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return ScreenUtilInit(
 designSize: const Size(375, 812),
  builder: (context, child) => Consumer(
        builder: (context, ref, _) {
         
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
         
          );
        },
      ),
    );
  }
}