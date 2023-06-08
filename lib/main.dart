import 'package:flutter/material.dart';
import 'package:mafia_game/widgets/change_member_count_widget.dart';
import 'package:mafia_game/widgets/change_mode_widget.dart';
import 'package:mafia_game/widgets/select_theme_grid_widget.dart';
import 'package:provider/provider.dart';

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
        home: ChangeNotifierProvider(
            create: (BuildContext context) => HomeViewModel(),
            child: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  late HomeViewModel _viewModel;

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    _viewModel = Provider.of<HomeViewModel>(context);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ChangeModeWidget(
                onPressed: () {
                  _viewModel.changeMode();
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChangeMemberCountWidget(
                      desc:
                          "${Provider.of<HomeViewModel>(context).memberCount}명",
                      onPressedPlus: () {
                        _viewModel.plusMemberCount();
                      },
                      onPressedMinus: () {
                        _viewModel.minusMemberCount();
                      },
                    ),
                    ChangeMemberCountWidget(
                      desc: "${Provider.of<HomeViewModel>(context).lierCount}명",
                      onPressedPlus: () {
                        _viewModel.plusLiarCount();
                      },
                      onPressedMinus: () {
                        _viewModel.minusLiarCount();
                      },
                    ),
                  ],
                ),
              ),
              SelectThemeGridWidget(
                onSelectTheme: () {
                  _viewModel.selectTheme();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeViewModel with ChangeNotifier {
  int _memberCount = 0;
  int _lierCount = 0;
  String get memberCount => _memberCount.toString();
  String get lierCount => _lierCount.toString();

  void changeMode() {
    notifyListeners();
  }

  void selectTheme() {
    notifyListeners();
  }

  void plusMemberCount() {
    _memberCount += 1;
    notifyListeners();
  }

  void minusMemberCount() {
    _memberCount -= 1;
    notifyListeners();
  }

  void plusLiarCount() {
    _lierCount += 1;
    notifyListeners();
  }

  void minusLiarCount() {
    _lierCount -= 1;
    notifyListeners();
  }
}
