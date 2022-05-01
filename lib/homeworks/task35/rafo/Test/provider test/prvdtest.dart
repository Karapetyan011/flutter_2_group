
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderTest with ChangeNotifier{
  int? aCounter ;
  bool a =true;
  double height = 100.0;
  void f (BuildContext context){
    a=!a;
    notifyListeners();
  }

  ProviderTest(){
    initShared();
  }


  void initShared() async {

    final prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('counter') == null) {
      await prefs.setInt("counter", 0);
    }
    aCounter = prefs.getInt('counter')!;
notifyListeners();
  }

  void incrimente () async{
    final prefs = await SharedPreferences.getInstance();
    aCounter = aCounter! + 1;
    var a = prefs.setInt("counter", aCounter!);
    notifyListeners();
  }
}

