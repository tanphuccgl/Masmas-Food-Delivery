import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AccessWrapperPage extends StatelessWidget {
  const AccessWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutoRouter(),
    );
  }
}
