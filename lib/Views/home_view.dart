import 'package:flutter/material.dart';
import 'package:sevend/view_models/home_view_model.dart';

import '../Model/nationality.dart';
import '../Network/APIClient.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var homeData = HomeViewModel();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeData.appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: TextField(
                    controller: nameController,
                    obscureText: false,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      await homeData.getNatio(nameController.text);

                      setState(() {});
                    },
                    child: Icon(Icons.search))
              ],
            ),
            Text(homeData.nationality?.country?.first.countryId ?? ""),
            SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                        homeData.nationality?.country?[index].countryId ?? "");
                  },
                  itemCount: homeData.nationality?.country?.length ?? 0,
                )),
          ],
        ),
      ),
    );
  }
}
