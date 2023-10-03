import 'package:flutter/material.dart';
import 'package:healthcheckup/modules/home_module/pages/components/homePageAppBar.dart';
import 'package:healthcheckup/modules/home_module/pages/components/popularLabTest.dart';
import 'package:healthcheckup/modules/home_module/pages/components/popularpackages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: HomepageAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PopularLabTests(),
              SizedBox(
                height: 20,
              ),
              PopularPackages()
            ],
          ),
        ),
      ),
    );
  }
}
