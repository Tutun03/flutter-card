import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home:quest1()
  ));
}

class quest1 extends StatefulWidget {



  @override
  State<quest1> createState() => _quest1State();
}

class _quest1State extends State<quest1> {
  // List<String>quotes=[
  //   'hi,good morning',
  //   'better',
  //   "good evening"
  // ];
List<Quote>quotes=[
  Quote(author:'oscar wild', text:'ete'),
  Quote(author:'oscar wild', text:'ete'),
  Quote(author:'oscar wild', text:'ete')
];

Widget QuoteTemplete(quote)
{
  return Card (
  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800]
            ),
          )
        ],
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children:
         // quotes.map((Quotes){
         //  return Text(Quotes);
         // }).toList()
        // quotes.map((Quotes)=>Text(Quotes)).toList()
        // quotes.map((Quotes)=>Text('${Quotes.text}-${Quotes.author}')).toList()
          quotes.map((Quotes)=>QuoteTemplete(Quotes)).toList()
        
      ),
    );
  }
}
// in Flutter, the children property of widgets like Column, Row, ListView, and similar multi-child widgets always expects a List<Widget>
// When you use .toList() on a MappedListIterable, it converts the MappedListIterable into a List. This List<Widget> is then accepted by the Column (or any other widget's children property