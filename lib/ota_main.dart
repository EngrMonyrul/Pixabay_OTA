part of 'pixabay_ota.dart';

final di = GetIt.instance;

class OtaMain extends StatelessWidget {
  const OtaMain({
    super.key,
    this.title,
    this.lightTheme,
    this.darkTheme,
    this.themeMode,
    this.onGenerateRoutes,
    this.home,
    this.providers,
  });

  final String? title;
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;
  final RouteFactory? onGenerateRoutes;
  final Widget? home;
  final List<dynamic>? providers;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...providers ?? [],
        ...initProviders,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title ?? "",
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeMode ?? ThemeMode.system,
        onGenerateRoute: onGenerateRoutes,
        home: home,
      ),
    );
  }
}
