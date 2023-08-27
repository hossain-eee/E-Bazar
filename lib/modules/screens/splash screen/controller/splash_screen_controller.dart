import 'package:ecommerce_firebase/utils/shared_pref.dart';import 'package:ecommerce_firebase/utils/store_data.dart';import '../../../../utils/export.dart';import '../../../../utils/storage_key.dart';class SplashScreenController extends GetxController {  Future<void> authStateChanges() async {    await Future.delayed(const Duration(seconds: 3));    final tokenData = storageInstance.read(StorageKey.setTokenKey);    final isRememberData = storageInstance.read(StorageKey.setIsRemember);    if (tokenData != null && tokenData.isNotEmpty) {      UserData.userToken = tokenData;      Get.offAllNamed(RouteName.homeScreen);    } else {      if (isRememberData == true) {        Get.offAllNamed(RouteName.loginScreen);      } else {        Get.offAllNamed(RouteName.onboardingScreen);      }    }  }}