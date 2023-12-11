import 'package:flutter/material.dart';
import 'package:lawtip/Utilities/utils.dart';

Widget textBox(BuildContext context,double hscale, double wscale, controller, String validate, String hintText, FocusNode currentFocusNode,FocusNode? nextFocusNode){
  return Card(
    color: Colors.transparent,
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            width: 1, color: Colors.white.withOpacity(.449))),
    child: Container(
      height: 60 * hscale,
      alignment: Alignment.center,
      child: TextFormField(
        enableSuggestions: true,
        controller: controller,
        focusNode: currentFocusNode,
        onFieldSubmitted: nextFocusNode == null?(_){}:(_)=> Utils.focusChange(context, nextFocusNode),
        keyboardType: TextInputType.emailAddress,
        validator: (value) => value!.isEmpty ? validate : null,
        autocorrect: false,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            contentPadding:
            EdgeInsets.symmetric(horizontal: 24 * wscale),
            hintStyle: TextStyle(
              color: const Color.fromARGB(120, 255, 255, 255)
                  .withOpacity(.6),
              fontSize: 16 * hscale,
            ),
            hintText: hintText),
      ),
    ));
}