import 'package:breaking_bad_quote_app/contollers/searchcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchCharacter extends StatelessWidget {
  SearchCharacter({Key? key}) : super(key: key);
  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white60,
          ),
          child: TextFormField(
            controller: searchController.searchTextController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,),
            ),
          ),
        ),
      ],
    );
  }
}
