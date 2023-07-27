import 'package:News/constants/constants.dart';
import 'package:hive/hive.dart';

class HiveMethods {

  //Adding to hive db
  void put(String key, dynamic value) {
    var box = Hive.box(kNewsBox);
    box.put(key, value);
  }

  //Reading hive db
  dynamic get(String key) {
    var box = Hive.box(kNewsBox);
    var value = box.get(key);
    return value;
  }

  //Deleting one data from hive DB
  void delete(String key) {
    var box = Hive.box(kNewsBox);
    box.delete(key);
  }

  //Deleting whole data from Hive
  void deleteAll() {
    var box = Hive.box(kNewsBox);
    box.clear();
  }
}
