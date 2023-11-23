import 'package:flutter/material.dart';
import 'package:store_app/features/cart/presentation/views/cart_view.dart';
import 'package:store_app/features/home/presentation/views/home_view.dart';
import 'package:store_app/features/home/presentation/views/widgets/favorite_view.dart';
import 'package:store_app/features/profile/presentation/views/profile_view.dart';

const List<Widget> screens = [
  HomeView(),
  FavoriteView(),
  CartView(),
  ProfileView(),
];
