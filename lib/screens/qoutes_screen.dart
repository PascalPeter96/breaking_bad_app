import 'package:breaking_bad_quote_app/contollers/quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class QuotesScreen extends StatelessWidget {
  final QuoteController quoteController = Get.put(QuoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Quotes', style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
          color: Colors.green
        ),),
      ),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: quoteController.quotesList.length,
                  itemBuilder: (context, index) {
                    var qt = quoteController.quotesList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(qt.quoteId.toString()),
                      ),
                      title: Text(qt.quote.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                      ),
                      subtitle: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Author: ',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,),),
                              TextSpan(
                                text: '${qt.author.toString()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,),),
                            ]
                          )),
                    );
                  }),
            ),
          ],
        );
      }),
    );
  }
}
