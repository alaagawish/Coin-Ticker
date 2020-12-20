import 'package:flutter/material.dart';


class ListViewModel extends StatelessWidget {

  List<String> list =[
    'Test1',
    'Test2',
    'Test3',
    'Test4',
    'Test5',
    'Test6',
    'Test7',
    'Test8',

  ];

  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData=MediaQuery.of(context);
    print("${queryData.size.width}");
    print("${queryData.size.height}");
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: createList(list),),

    );
  }


Widget createList(List<String> list){



  return Wrap (
        children: list
          .map((e) => Container(
          height: queryData.size.height,
          width: queryData.size.width*0.5,
          color:  Colors.lightBlue,
          margin: EdgeInsets.symmetric(vertical: queryData.size.width*0.2,horizontal: 25),
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              e,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            ),
          ),

        ),

      ))
      .toList()
    ) ;
}



}
