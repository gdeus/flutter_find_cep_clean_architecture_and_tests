import 'package:flutter/material.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class LoadingSkeleton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              fieldData(context),
              fieldData(context),
              fieldData(context),
              fieldData(context),
            ],
          ),
        )
      );
  }


  Widget fieldData(BuildContext context){
    return SkeletonLoader(
      baseColor: Colors.grey[350],
      highlightColor: Colors.grey[400],
      builder: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 15,
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.2,
                padding: EdgeInsets.only(bottom: 2.0),
              ),
              SizedBox(height: 3,),
              Container(
                height: 19,
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.7,
              )
            ],
          ),
        )
    );
  }
}