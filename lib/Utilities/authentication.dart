import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailphoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailphoneNode = FocusNode().obs;
  final passwordNode = FocusNode().obs;
  RxBool isLoading = false.obs;

  Future<String> login() async {
    isLoading = true.obs;
    try {
      var response =
      await http.post(Uri.parse('http://10.0.2.2:5000/login'),
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          body: {
            'emailphone': emailphoneController.value.text,
            'password': passwordController.value.text
          });
      if (response.statusCode == 200) {
        Get.snackbar(
            'Login successful', 'Welcome to LawTip',
            backgroundColor: Colors.white70,
            snackPosition: SnackPosition.BOTTOM);
        var data = jsonDecode(response.body);
        log(data['token']);
        return data['token'];
      }
      else if (response.statusCode == 401) {
        Get.snackbar(
            'Authentication Error', 'Wrong credentials',
            backgroundColor: Colors.white70,
            snackPosition: SnackPosition.BOTTOM);
        throw 'Wrong Credentials';
      }
      else if (response.statusCode == 404) {
        Get.snackbar(
            'Authentication Error', 'User not found',
            backgroundColor: Colors.white70,
            snackPosition: SnackPosition.BOTTOM);
        throw 'User not found';
      }
      else{
        throw 'Authentication error';
      }
    } catch (e) {
      isLoading = false.obs;
      throw '$e';
    }
  }
}

class RegisterController extends GetxController{
  final nameController = TextEditingController().obs;
  final emailphoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final nameNode = FocusNode().obs;
  final emailphoneNode = FocusNode().obs;
  final passwordNode = FocusNode().obs;
  final confirmPasswordNode = FocusNode().obs;
  final String emailPhoneRequired = 'Email/Phone is required';
  final String fullNameRequired = 'Kindly enter your name';
  final String passwordRequired = 'Password is required';
  final String confirmPasswordRequired = 'Kindly confirm your password';
  RxBool isLoading = false.obs;
  void register() async{
    try{
      var response =
      await http.post(Uri.parse('http://10.0.2.2:5000/register'),
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          body: {'name': nameController.value.text,
            'emailphone': emailphoneController.value.text,
            'password': passwordController.value.text});
      if (response.statusCode == 400) {
        Get.snackbar(
            'Registration failed','User already exists. Try with a different email',
            backgroundColor: Colors.white70,
            snackPosition: SnackPosition.BOTTOM);
      }
      isLoading = false.obs;
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
      isLoading = false.obs;
    }
  }
}

class OtpController extends GetxController{
  final box1 = TextEditingController().obs;
  final box2 = TextEditingController().obs;
  final box3 = TextEditingController().obs;
  final box4 = TextEditingController().obs;
  final boxNode1 = FocusNode().obs;
  final boxNode2 = FocusNode().obs;
  final boxNode3 = FocusNode().obs;
  final boxNode4 = FocusNode().obs;
}