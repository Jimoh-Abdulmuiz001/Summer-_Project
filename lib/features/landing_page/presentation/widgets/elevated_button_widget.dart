import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summer_project/features/landing_page/provider/hover_provider.dart';

class ElevatedHoverButton extends ConsumerWidget {
  final String text;
  final Gradient normalGradient;
  final Icon icon;

  const ElevatedHoverButton({
    Key? key,
    required this.text,
    required this.normalGradient,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 350),
        height: 60.h,
        width: 300.w,
        decoration: BoxDecoration(
          gradient: normalGradient,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(width: 10.w),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
