//home landing page
//test
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_database/model/movie.dart';
import 'package:movie_database/util/hexcolor.dart';

class MovieListView extends StatelessWidget {

  final List<Movie> movieList = Movie.getMovies();

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
            itemCount: movieList.length, // this is the thing you have to remember to use something like bluetoothlist item .length -sudocode of what I want
            itemBuilder: (BuildContext context, int index){
              return movieCard(movieList[index], context);
          /*return Card(
            elevation: 7,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(movieList[index].images[0]),
                      fit: BoxFit.cover
                    ),
                    color: _purple,
                        borderRadius: BorderRadius.circular(50.9)
                  ),
                )
              ),
              trailing: Text("..."),
              title: Text(movieList[index].title),
              subtitle: Text(movieList[index].plot),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MovieListViewDetails(movieName: movieList[0].title,
                    movie: movieList[index])));
              },
              //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}"),
            ));*/


    }),
    );
  }
  Widget movieCard(Movie movie, BuildContext context){
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,
            bottom: 8.0,
            left: 54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text(movie.title),
                  Text("rating: ${movie.imdbRating} /10"
                  )
                ],
                ),
                Row(children: <Widget>[
                  Text("Released ${movie.released} "),
                  Text(movie.runtime),
                  Text(" Rated: ${movie.rated}")
                ],

                ),

              ],
            ),
          ),
        ),
      ),
          onTap: () => debugPrint("just a debug message at ${movie.title}"),
    );
  }







}

// new route/screen/page
class MovieListViewDetails extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const MovieListViewDetails({Key key, this.movieName, this.movie}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies ${this.movieName}"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Go back ${this.movie.title}"),
            onPressed: () {
              Navigator.pop(context); // navigates back to the first page
            },
          ),
        ),
      ),
    );
  }
}




