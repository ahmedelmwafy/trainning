import 'package:flutter/material.dart';
import 'package:tawla/navigator/named_navigator.dart';
import 'package:tawla/navigator/named_navigator_impl.dart';

Widget textField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: (){
            NamedNavigatorImpl()
                .push(Routes.SEARCH_ROUTE, replace: false, clean: false);
          },
          child: TextFormField(
            enabled: false,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'عاوز تاكل فين انهارده؟',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                suffixIcon: Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color.fromRGBO(67, 84, 160, 1),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide.none
                )),
          ),
        )),
  );
}
