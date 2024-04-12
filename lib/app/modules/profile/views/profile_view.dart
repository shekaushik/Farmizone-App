import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/custom_button.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: context.theme.textTheme.headline3),
        centerTitle: true,
      ),
      body: Container(color: Colors.white54,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage("assets/avatar.png"),
                ),
              ],
            ),
            24.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [

                Text(
                  "ABC XYZ",
                  style:
                  TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: CustomButton(
                          text: 'Privacy',
                          onPressed: () {},
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                        ).animate().fade().slideY(
                          duration: 300.ms,
                          begin: 1,
                          curve: Curves.easeInSine,
                        ),
                      ),
                      24.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: CustomButton(
                          text: 'Purchase History',
                          onPressed: () {},
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                        ).animate().fade().slideY(
                          duration: 300.ms,
                          begin: 1,
                          curve: Curves.easeInSine,
                        ),
                      ),
                      24.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: CustomButton(
                          text: 'Help and Support',
                          onPressed: () {},
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                        ).animate().fade().slideY(
                          duration: 300.ms,
                          begin: 1,
                          curve: Curves.easeInSine,
                        ),
                      ),
                      24.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: CustomButton(
                          text: 'Settings',
                          onPressed: () {},
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                        ).animate().fade().slideY(
                          duration: 300.ms,
                          begin: 1,
                          curve: Curves.easeInSine,
                        ),
                      ),
                      24.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.w),
                        child: CustomButton(
                          text: 'Logout',
                          onPressed: () {},
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                        ).animate().fade().slideY(
                          duration: 300.ms,
                          begin: 1,
                          curve: Curves.easeInSine,
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}