import 'package:flutter/material.dart';
import 'package:telegramclone/components/size_config.dart';

SizedBox setHeight(double height) =>
    SizedBox(height: getProportionateScreenHeight(height));

SizedBox setWidth(double width) =>
    SizedBox(width: getProportionateScreenWidth(width));
