import 'package:flutter/material.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:minesweeper_2/presentation/navigation/go_router_configuration.dart';
import 'package:minesweeper_2/presentation/theme/custom_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //await dotenv.load(fileName: '.env');
  //await initializeDependencies();
  runApp(const MinesweeperApp());
}

class MinesweeperApp extends StatefulWidget {
  const MinesweeperApp({super.key});

  @override
  State<MinesweeperApp> createState() => _MinesweeperAppState();
}

class _MinesweeperAppState extends State<MinesweeperApp> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => GoRouterConfiguration(),
      child: Builder(
        builder: (context) {
          return ThemeProvider(
            appTheme: AppTheme.light,
            child: MaterialApp.router(
              routerConfig: Provider.of<GoRouterConfiguration>(context).router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
            ),
          );
        },
      ),
    );
  }
}
