// LISTView
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
// create a class to listView
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme
      theme:ThemeData(
        // color
        primaryColor: Colors.teal
      ),
      // home
      home: Scaffold(
        // appBar
        appBar: AppBar(
          title: Text('ListView'),
        ),
        // body
        body: BodyLayout(),
      ),
    );
  }
}
// CREATE A BODY LAYOUT
class BodyLayout extends StatelessWidget {
  const BodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListViewCustomList(context);   // _createList(context);
  }
}
// create a list as a staic data
// this type list is used to small of data
 Widget _createList(BuildContext context){
    return ListView(
      children: <Widget>[
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map'),
           ),
        ListTile(
          leading: Icon(Icons.close),
          title: Text('Close'),
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Search'),
        ),
      ],
    );
 }
 // create a dynamic list function flutter
 Widget _listWithdataDynamic(BuildContext context){
   final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
     'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
     'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
     'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
     'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
     'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
     'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
     'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
     'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
    return ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context,index){
        return ListTile(
          title: Text(europeanCountries[index]),
        );
        }

    );
 }
 // infinite list function
 Widget _infinitelistView(BuildContext context){
  return ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          title: Text('row $index'),
        );
      }

  );

 }
 // listView with seprated
 Widget _mylistViewSeprated(BuildContext context){
  return ListView.separated(
      itemCount: 500,
      itemBuilder: (context,index){
        return ListTile(
          title: Text('row $index'),
        );
      },
      separatorBuilder: (context,index){
        return Divider();
      }
     );

 }
// listview with horizontal
Widget _listWitHorizontal(BuildContext context){
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: europeanCountries.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(europeanCountries[index]),
        );
      }

  );
}
// listView take a image from a assets folder
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.png'),
        ),
        title: Text('Sun'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.png'),
        ),
        title: Text('Moon'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.png'),
        ),
        title: Text('Star'),
      ),
    ],
  );
}
// listView with Card
Widget _myListViewWithCard(BuildContext context){
  final titles = ['bike', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'];

  final icons = [Icons.directions_bike, Icons.directions_boat,
    Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
    Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
    Icons.directions_walk];

  return ListView.builder(
    itemCount: titles.length,
      itemBuilder: (context,index){
      return Card(
        shadowColor: Colors.grey,
        elevation: 5,
        // here you apply all card Propery
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
        ),
      );
      }

  );

}
// customListItem
Widget _myListViewCustomList(BuildContext context){
  // the expanded Widget lets the Columns share the space
   Widget column = Expanded(
     child: Column(
        // align to the left instd of centered
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Title',style: TextStyle(fontSize: 16),),
          Text('Subtitle')
        ],
      ),
   );
    return ListView.builder(
        itemBuilder: (context ,index){
          return Card(
            child: Row(
              children: <Widget>[
                column,
                column
              ],
            ),
          );
        }

    );
}

