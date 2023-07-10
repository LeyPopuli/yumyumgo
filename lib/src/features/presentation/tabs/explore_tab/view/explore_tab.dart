import "package:flutter/material.dart";
import "package:yumyumgo/src/colors/colors.dart";
import 'package:yumyumgo/src/features/presentation/common_widgets/texts/header_text.dart';
import 'package:yumyumgo/src/features/presentation/common_widgets/cards/popular_card.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _topBar(context),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    alignment: Alignment.centerLeft,
                    child: createText(
                        text: 'Discover new places',
                        color: Colors.black,
                        fontSize: 30.0)),
                _sliderCards(),
                _headers(context, "Popular this week", "Show all"),
                createPopularCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                    title: "Andy & Cindy's Diner",
                    subtitle: "87 Botsford Circle Apt",
                    review: "4.8",
                    ratings: "(233 ratings)",
                    buttonText: 'Delivery',
                    hasActionButton: true,
                    context: context),
                createPopularCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=481&q=80'),
                    title: "Sunny's Pizza Parlor",
                    subtitle: "123 Sunshine Boulevard",
                    review: "4.5",
                    ratings: "(158 ratings)",
                    buttonText: 'Order Now',
                    hasActionButton: true,
                    context: context),
                createPopularCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1518810300173-625a9c46f7d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNvenklMjBjYWZlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    title: "The Cozy Cafe",
                    subtitle: "456 Oak Street",
                    review: "4.2",
                    ratings: "(89 ratings)",
                    buttonText: 'Reserve Table',
                    hasActionButton: true,
                    context: context),
                createPopularCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1583898350903-99fa829dad3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YmlzdHJvfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                    title: "Bella's Bistro",
                    subtitle: "789 Elm Avenue",
                    review: "4.6",
                    ratings: "(203 ratings)",
                    buttonText: 'See Menu',
                    hasActionButton: true,
                    context: context),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'collections');
                    },
                    child: _headers(context, "Collections", "Show all")),
                _sliderCollections()
              ],
            ))
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 310,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 5, top: 10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: darkGrey,
              ),
              Container(
                margin: EdgeInsets.only(left: 2),
                child: Text('Search',
                    style: TextStyle(color: darkGrey, fontSize: 17.0)),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10, top: 10.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'filter');
            }),
      )
    ],
  );
}

Widget _sliderCards() {
  return SizedBox(
      height: 350.0,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card(context);
          }));
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
                width: 210.0,
                height: 250.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("Andy & Cindy's Diner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("87 Botsford Circle Apt",
                    style: TextStyle(
                        color: darkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: purple, size: 16),
                  Text("4.8",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Text("(233 ratings)",
                      style: TextStyle(
                          color: darkGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: purple,
                        elevation: 0.5,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: Text('Delivery', style: TextStyle(fontSize: 11.0)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: createText(text: textHeader, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return _cardCollection(context);
      },
    ),
  );
}

Widget _cardCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1581546104493-f7e013a136ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
      ],
    ),
  );
}
