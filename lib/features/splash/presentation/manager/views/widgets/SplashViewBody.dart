import 'package:bookly/core/utilts/assets.dart';
import 'package:bookly/features/splash/presentation/manager/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController anim_controller;
  late Animation<Offset> sliding_anim;
  @override
  void initState() {
    super.initState();
    init_sliding_anim();
    Future.delayed(const Duration(seconds: 2), () {
      navigate_to_home();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    anim_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assets_Data.logo),
          const SizedBox(
            height: 2,
          ),
          sliding_text(sliding_anim: sliding_anim)
        ],
      ),
    );
  }

  void navigate_to_home() {
    // Get.to(
    //   () => const HomeView(),
    //   transition: Transition.fade,
    //   duration: const Duration(milliseconds: 850),
    //
    // );
    GoRouter.of(context).push(
      '/home_view',
    );
  }

  void init_sliding_anim() {
    anim_controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
    sliding_anim =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(anim_controller);
    anim_controller.forward();
  }
}
