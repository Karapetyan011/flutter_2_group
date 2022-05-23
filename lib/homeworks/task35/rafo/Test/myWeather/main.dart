import 'package:flutter/cupertino.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/widgets/myProvider.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/widgets/myWeather.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MyProvider()),
    ],
    child: MyWeather(),
  ));
}
