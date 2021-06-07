import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Genre {
  final int id;
  final String name;

  Genre(this.id, this.name);
}

class GenreDropDown extends StatefulWidget {
  @override
  GenreDropDownWidget createState() => GenreDropDownWidget();
}

class GenreDropDownWidget extends State<GenreDropDown> {
  Genre ddbValue;

  final List<Genre> genreList = <Genre>[
    Genre(1, "Fiction"),
    Genre(2, "Narrative"),
    Genre(3, "Non-Fiction"),
    Genre(4, "Biography"),
    Genre(5, "Novel"),
    Genre(6, "Genre Fiction"),
    Genre(7, "Mystery"),
    Genre(8, "Historical Fiction"),
    Genre(9, "Literary Fiction"),
    Genre(10, "Short Story"),
    Genre(11, "Fantasy"),
    Genre(12, "Poetry"),
    Genre(13, "Young Adult Fiction"),
    Genre(14, "Horror Fiction"),
    Genre(15, "Humor"),
    Genre(16, "Romance Novel"),
    Genre(17, "Political"),
    Genre(18, "Article"),
    Genre(19, "Science Fiction"),
    Genre(20, "Fairy Tale"),
    Genre(21, "Social"),
    Genre(22, "Thriller"),
    Genre(23, "Urban"),
    Genre(24, "War"),
    Genre(25, "Western")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: DropdownButton<Genre>(
            disabledHint: Text("Disabilitated"),
            hint: Text("Ex: Sci-Fi"),
            isExpanded: false,
            value: ddbValue,
            underline: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
            items: genreList.map<DropdownMenuItem<Genre>>((Genre item) {
              return DropdownMenuItem<Genre>(
                value: item,
                child: Text(item.name),
              );
            }).toList(),
            onChanged: (Genre newValue) {
              setState(() {
                ddbValue = newValue;
              });
            },
          ),
        ),
      ],
    );
  }
}
