import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:summer_project/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summer_project/features/landing_page/presentation/widgets/elevated_button_widget.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              AppColors().backgroundtopgradientcolor,
              AppColors().backgroundbottomgradientcolor,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 160.h),
              Center(
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Center(
                child: Text(
                  'Universal Health Record',
                  style: TextStyle(
                    color: AppColors().textpurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              Center(
                child: Text(
                  'Futuristic and seasmless healthcare management for hospitals and patients',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors().text, fontSize: 18),
                ),
              ),
              SizedBox(height: 27.h),
              ElevatedHoverButton(
                icon: Icon(
                  Icons.local_hospital_outlined,
                  color: AppColors().text,
                ),
                text: 'Hospital',
                normalGradient: LinearGradient(
                  colors: [
                    AppColors().hospitaltopcolor,
                    AppColors().hospitalbottomcolor,
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              ElevatedHoverButton(
                icon: Icon(Icons.person_4_outlined, color: AppColors().text),
                text: 'Patient',
                normalGradient: LinearGradient(
                  colors: [
                    AppColors().patienttopcolor,
                    AppColors().patientbotomcolor,
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              ElevatedHoverButton(
                icon: Icon(Icons.shield_outlined, color: AppColors().text),
                text: 'Admin',
                normalGradient: LinearGradient(
                  colors: [
                    AppColors().admintopcolor,
                    AppColors().adminbottomcolor,
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Center(
                  child: Text(
                    'Super Admin can review/approve hospital registrations, mange all hospitals, staff & patients, and access audit logs andactivity reports',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors().text, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
