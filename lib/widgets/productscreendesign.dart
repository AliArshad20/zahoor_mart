import 'package:flutter/material.dart';
import 'package:myshop/screens/productdetailscreen.dart';
import 'package:sizer/sizer.dart';

class Productscreendesign extends StatelessWidget {
  final String id, title, imageurl;

  Productscreendesign(
      {Key? key, required this.id, required this.title, required this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, Productdetailscreen.routeName,
            arguments:id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7.sp),
        child: GridTile(
          child: Image.network(
            imageurl,
            fit: BoxFit.fill,
          ),
          footer: Container(
            height: 3.5.h,
            child: GridTileBar(
              leading: Icon(Icons.favorite_outline),
              title: Text(title),
              trailing: Icon(Icons.shopping_cart_outlined),
              backgroundColor: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
