import 'package:flutter/material.dart';

List<String> categoriesList = [
  "Accessories",
  "Clothing",
  "Shoes",
  "Accessories",
  "Clothing",
  "Shoes",
];

Widget productCategories(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 30.0,
    child: ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: InkWell(
            child: Text(
              categoriesList[index],
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {},
          ),
        );
      }),
      itemCount: categoriesList.length,
    ),
  );
}
