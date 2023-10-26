abstract class Repo {
  Future getData({required String key}) async {
    return key;
  }

  Future saveData({
    required String key,
    required data,
  }) async {
    return key;
  }
}

Future<int> getData({required String key}) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt(key)!;
}

@override
Future saveData({
  required String key,
  required data,
}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt(key, data);
}
