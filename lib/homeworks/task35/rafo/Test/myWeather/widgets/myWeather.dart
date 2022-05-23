import 'package:flutter/material.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/consts/consts.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/widgets/myProvider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class MyWeather extends StatelessWidget {
  const MyWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("Weather APP"),
            centerTitle: true,
            backgroundColor: greenColor,
            flexibleSpace: FlexibleSpaceBar(),
            elevation: 24.0,
            titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          body: MyCostumWeatherPage(),
        ),
      ),
    );
  }
}

class MyCostumWeatherPage extends StatelessWidget {
  const MyCostumWeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var animCtrl = AnimationController;
    var textCtr = TextEditingController();
    return Consumer<MyProvider>(
        builder: (context, provider, _) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.75,
                      // invertColors: true,
                      // filterQuality: FilterQuality.high,
                      // colorFilter: ColorFilter.mode(Colors.red, BlendMode.lighten),
                      image: AssetImage(provider.weather)
                      // provider.weatherResponse?.weather?[0]["main"] ?? AssetImage("lib/homeworks/task35/rafo/Test/myWeather/myAsets/Default.png")
                      ,
                      fit: BoxFit.fill)),
              child: Center(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const Text("Welcome to the Weather APP"),
                        TextField(
                          decoration: const InputDecoration(
                            helperText: "Enter the City name",
                          ),
                          controller: textCtr,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            try {
                              provider.getWeather(textCtr.text);
                            } catch (e, s) {
                              print(s);
                            }
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            "City",
                            style: TextStyle(
                              fontSize: 45,
                            ),
                          ),
                        ),
                        Text(provider.weatherResponse?.name ?? "",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 30
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "Celsius",
                                    style: TextStyle(
                                      fontSize: 45,
                                    ),
                                  ),
                                  Text(
                                    "${provider.temperature?.round()}" ?? " ",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    if (provider.sleepduration == false)
                      Center(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.transparent.withAlpha(150),
                          child: Center(
                            child: AnimatedContainer(
                              duration: Duration(seconds: 5),
                              child: LoadingAnimationWidget.stretchedDots(
                                  color: Colors.white, size: 34.0),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ));
  }
}
