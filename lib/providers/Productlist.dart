import 'package:flutter/material.dart';
import 'package:myshop/models/productsmodel.dart';
import 'package:provider/provider.dart';

class Productlist extends ChangeNotifier{
  final List<Productsmodel> _items= [
    Productsmodel(
      id: 'c1',
      title: 'Smart Watch',
      imageurl:
      'https://cms-assets.tutsplus.com/cdn-cgi/image/width=630/uploads/users/2659/posts/35495/image/intro_Boom%20-%20One%20Product%20Electronics%20Shopify%20Theme.jpg',
      description: 'Mi Smart Watch',
      price: 20,
    ),Productsmodel(
      id: 'c2',
      title: 'Smart Watch',
      imageurl:'https://static-01.daraz.pk/p/ca7bbd539a0425829572723e24e6e460.jpg',
      description: 'Mi Smart Watch',
      price: 20,
    ),Productsmodel(
      id: 'c3',
      title: 'Smart Watch',
      imageurl:
      'https://static-01.daraz.pk/p/ca7bbd539a0425829572723e24e6e460.jpg',
      description: 'Mi Smart Watch',
      price: 20,
    ),
    // Productsmodel(
    //     id: 'c1',
    //     title: 'Smart Watch',
    //     imageurl:
    //         'http://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1601290543.0485232.png',
    //     description: 'Mi Smart Watch',
    //     price: 20,
    // ),
    Productsmodel(
      id: 'c4',
      title: 'Drone',
      imageurl:
      'https://colorlib.com/wp/wp-content/uploads/sites/2/mixture-single-product-shopify-theme.jpg',
      description: 'Mi Smart Watch',
      price: 20,
    ),
  ];


      List<Productsmodel> get Productsgetter {
        //spread operator(it gives item data to getter )
        return [..._items];
      }

      Productsmodel Findbyid(String id){
        return Productsgetter.firstWhere((meal)=>meal.id==id );
        }




}