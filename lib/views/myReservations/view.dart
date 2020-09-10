import 'package:flutter/material.dart';

class MyReservationsView extends StatefulWidget {
  @override
  _MyReservationsViewState createState() => _MyReservationsViewState();
}

class _MyReservationsViewState extends State<MyReservationsView>  with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController= TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'حجوزاتي',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor:
          Theme.of(context).backgroundColor,
          elevation: 0,
          bottom: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            onTap: (index){},
            labelPadding: EdgeInsets.all(10),
            labelColor: Colors.red,

            tabs: [
              Text('الطلبات الجديدة', style: TextStyle(color: Colors.black),),
              Text('في انتظار الدفع', style: TextStyle(color: Colors.black),),
              Text('الطلبات الجارية', style: TextStyle(color: Colors.black),),
              Text('الطلبات المكتملة', style: TextStyle(color: Colors.black),),
              Text('الطلبات الملغاة', style: TextStyle(color: Colors.black),),

            ],
          ),
        ),

      ),
    );
  }
}
