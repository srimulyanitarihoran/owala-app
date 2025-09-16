import 'package:flutter/material.dart';
import 'package:owala_app/utils/size_config.dart';
import 'package:owala_app/views/components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SiceConfig().init(context);
    return Scaffold(
      body: Body()
    );
  }
}