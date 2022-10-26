import '../Model/nationality.dart';
import '../Network/APIClient.dart';

class HomeViewModel {
  Nationality? nationality;

  String appTitle = "Hello mvvm";

  getNatio(String name) async {
    nationality = await APIClient.getHttp(name);
    print(nationality?.name.toString());
  }
}
