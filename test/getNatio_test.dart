import 'package:flutter_test/flutter_test.dart';
import 'package:sevend/view_models/home_view_model.dart';

void main() {
  final HomeViewModel obj = HomeViewModel();

  group("Home test", () {
    test("Incrementation done correctly", () {
      obj.increment();

      expect(obj.counter, 1);
    });

    test("Decrementation done correctly", () {
      obj.decrement();
      expect(obj.counter, -1);
    });

    // test("Data returned successfully", () {
    //   obj.getNatio("Amr");

    //   expect(obj.nationality?.country?.first, "Amr");
    // });
  });
}
