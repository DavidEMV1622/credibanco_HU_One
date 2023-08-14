import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageMethods {

  final storage = const FlutterSecureStorage();

  final String _keyIsFirstTime = 'isFirstTime';


  Future setIsfirstTime(bool isFirstTime) async {
    await storage.write(key: _keyIsFirstTime, value: isFirstTime.toString());
  }

  Future<bool?> getIsFirstTime() async {
    var isFirstTimeValue = await storage.read(key: _keyIsFirstTime);
    return isFirstTimeValue == 'true';
  } 
}