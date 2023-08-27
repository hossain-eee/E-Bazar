import 'package:ecommerce_firebase/utils/const.dart';import '../../../utils/export.dart';import '../../../utils/user_collection.dart';class UserDetailsController extends GetxController {  final TextEditingController nameController = TextEditingController();  final TextEditingController mobileController = TextEditingController();  final TextEditingController addressController = TextEditingController();  final TextEditingController emailController = TextEditingController();  final TextEditingController passwordController = TextEditingController();  final TextEditingController title = TextEditingController();  final TextEditingController desc = TextEditingController();  final TextEditingController token = TextEditingController();  final FocusNode nameFocus = FocusNode();  final FocusNode mobileFocus = FocusNode();  final FocusNode addressFocus = FocusNode();  final FocusNode passwordFocus = FocusNode();  final FocusNode emailFocus = FocusNode();  final formKey = GlobalKey<FormState>();  Future<void> updateUser(documentId) {    return Collection.collectionProfile        .doc(documentId)        .update({          "Email": emailController.text,          "Name": nameController.text,          "Photo": base64ImageUrl,          "Address": addressController.text,          "Mobile": mobileController.text,          "Password": passwordController.text        })        .then((value) => print("User Updated"))        .catchError((error) => print("Failed to update user: $error"));  }  void validateSubmit(documentId) {    passwordFocus.unfocus();    if (formKey.currentState!.validate()) {      updateUser(documentId).then((value) => Get.back());    }  }}