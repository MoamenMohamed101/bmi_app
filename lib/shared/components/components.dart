import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

dufultButton(
        {double? width,
        Color? color,
        VoidCallback? voidCallback,
        String? text}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: voidCallback,
        child: Text(
          text!.toUpperCase(),
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
