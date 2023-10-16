import 'package:flutter/material.dart';

const mobileWidth = 480;
const mobieHeight = 950;

bool isMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width < mobileWidth &&
    MediaQuery.sizeOf(context).height < mobieHeight;

double width(BuildContext context) => MediaQuery.sizeOf(context).width;
double height(BuildContext context) => MediaQuery.sizeOf(context).height;
