import '../Model/nationality.dart';
import '../Network/APIClient.dart';

class HomeViewModel {
  Nationality? nationality;
  int counter = 0;

  String appTitle = "Hello mvvm";

  var name = "";

  getNatio(String name) async {
    nationality = await APIClient().getHttp(name);
    print(nationality?.name.toString());
    name = "${nationality?.country?.first.toString()}";
  }

  increment() {
    return counter++;
  }

  decrement() {
    return counter--;
  }
}
