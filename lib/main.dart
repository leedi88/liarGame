import 'package:flutter/material.dart';
import 'package:mafia_game/widgets/change_member_count_widget.dart';
import 'package:mafia_game/widgets/change_mode_widget.dart';
import 'package:mafia_game/widgets/select_theme_grid_widget.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  onChangeModeTap() {
    log("onChangeModeTap");
  }

  onPlusMemberCount() {
    log("onPlusMemberCount");
  }

  onMinusMemberCount() {
    log("onMinusMemberCount");
  }

  onPlusLiarCount() {
    log("onPlusLiarCount");
  }

  onMinusLiarCount() {
    log("onMinusLiarCount");
  }

  onSelectTheme() {
    log("onSelectTheme");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ChangeModeWidget(
                onPressed: onChangeModeTap,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChangeMemberCountWidget(
                      desc: "총 n명",
                      onPressedPlus: onPlusMemberCount,
                      onPressedMinus: onMinusMemberCount,
                    ),
                    ChangeMemberCountWidget(
                      desc: "라이어 n명",
                      onPressedPlus: onPlusLiarCount,
                      onPressedMinus: onMinusLiarCount,
                    ),
                  ],
                ),
              ),
              SelectThemeGridWidget(
                onSelectTheme: onSelectTheme,
              )
            ],
          ),
        ),
      ),
    );
  }
}
