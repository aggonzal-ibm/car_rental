import 'package:car_rental_app/profile/widgets/card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _BuildCabecera(),
          SizedBox(
            height: 30,
            width: 30,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Most  Liked Car',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 300,
            // color: Colors.red,
            child: MostLikedCar(),
          ),
          SizedBox(
            height: 30,
            width: 30,
          ),
          Container(
            width: double.infinity,
            height: 200,
            // color: Colors.red,
            child: _ListRecipes(),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
          ),
          SizedBox(
            height: 30,
            width: 30,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class _BuildCabecera extends StatelessWidget {
  const _BuildCabecera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.indigo,
            child: CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('assets/andy.png'),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    //fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 5,
                width: 5,
              ),
              Text("Andy González",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}

class MostLikedCar extends StatelessWidget {
  const MostLikedCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardGenerator myCard = CardGenerator();

    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          myCard.cardGenerator(
            title: "Acura",
            subtitle: "40 autos disponibles",
            path: "assets/acura_0.png",
            rating: 2,
          ),
          myCard.cardGenerator(
            title: "Acura 2",
            subtitle: "40 autos disponibles",
            path: "assets/acura_1.png",
            rating: 4,
          ),
          myCard.cardGenerator(
            title: "Honda ",
            subtitle: "40 autos disponibles",
            path: "assets/acura_2.png",
            rating: 5,
          ),
        ],
      ),
    );
  }
}

class _ListRecipes extends StatefulWidget {
  _ListRecipes({Key? key}) : super(key: key);

  @override
  __ListRecipesState createState() => __ListRecipesState();
}

class __ListRecipesState extends State<_ListRecipes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _card(
          title: "Fiat",
          subtitle: "40 auts disponibles",
          path: "assets/fiat_0.png",
        ),
        _card(
          title: "Land Rover",
          subtitle: "40 auts disponibles",
          path: "assets/land_rover_0.png",
        ),
        _card(
          title: "Nissan",
          subtitle: "40 auts disponibles",
          path: "assets/nissan_gtr_0.png",
        ),
      ],
    );
  }
}

Widget _card({
  required String title,
  required String subtitle,
  required String path,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(15.0),
    height: 100.0,
    decoration: BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.scaleDown,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
