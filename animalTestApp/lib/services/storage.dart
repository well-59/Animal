import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static final Storage storage = Storage._internal();
  late SharedPreferences sharedPreferences;
  factory Storage() {
    return storage;
  }
  Storage._internal();
  //save
  Future<bool> setString(String key, String value, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(user + key, value);
  }

  Future<bool> setStringList(String key, List<String> value,
      {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setStringList(user + key, value);
  }

  Future<bool> setInt(String key, int value, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setInt(user + key, value);
  }

  Future<bool> setBool(String key, bool value, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setBool(user + key, value);
  }

  Future<bool> setDouble(String key, double value, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setDouble(user + key, value);
  }

  Future<String> getString(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(user + key) ?? "";
  }

  Future<List<dynamic>> getStringList(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(user + key) ?? [];
  }

  Future<int> getInt(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(user + key) ?? -1;
  }

  Future<bool> getBool(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(user + key) ?? false;
  }

  Future<double> getDouble(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(user + key) ?? -1;
  }

  //Return true if the value is exist
  Future<bool> isExist(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.containsKey(user + key);
  }

  //delete
  Future<bool> delete(String key, {String user = ""}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(user + key);
  }

  // Remove all
  Future<bool> clearAll() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.clear();
  }
}
