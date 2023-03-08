import 'package:flutter/material.dart';
import 'package:flutter_amplify_bolierplate/my_app.dart';
import 'package:flutter_amplify_bolierplate/navigation/routes.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const MyHomePage(title: "BoilerPlate"),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
