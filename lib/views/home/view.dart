import 'package:flutter/material.dart';
import 'package:tawla/models/home.dart';
import 'package:tawla/views/home/controller.dart';
import 'package:tawla/views/home/places_list.dart';
import 'package:tawla/widgets/homeAppBar.dart';
import 'package:tawla/widgets/textField.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController _homeController = HomeController();
  HomeModel _homeModel = HomeModel();
  bool _loading = true;

  @override
  void initState() {
    _getHomeData();
    super.initState();
  }

  _getHomeData() async {
    _homeModel = await _homeController.getHomeData();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: homeAppBar(context: context),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                textField(),
                Expanded(
                    child: PlacesList(
                  homeModel: _homeModel,
                ))
              ],
            ),
    );
  }
}
