//home landing page
//test
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_database/util/hexcolor.dart';

class MovieListView extends StatelessWidget {
  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf Of Wall Street",
    "Interstellar",
    "Game of thrones",
    "Vikings",
    "Paprika"
  ];
  int _counter =0;
  Color _purple = HexColor("#5900B3");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
        body: ListView.builder(
            itemCount: movies.length, // this is the thing you have to remember to use something like bluetoothlist item .length -sudocode of what I want
            itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 7,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    color: _purple,
                        borderRadius: BorderRadius.circular(50.9)
                  ),
                  child: Text("ugly"),
                )
              ),
              trailing: Text("..."),
              title: Text(movies.elementAt(index)),
              subtitle: Text("more text"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MovieListViewDetails()));
              },
              //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}"),
            ));
    }),
    );
  }
}

// new route/screen/page
class MovieListViewDetails extends StatelessWidget {
  final String movieName;

  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        child: RaisedButton(
          child: Text("Go back"),
          onPressed: () {
            Navigator.pop(context); // navigates back to the first page
          },
        ),
      ),
    );
  }
}




