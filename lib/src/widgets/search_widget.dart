import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => this.query = "",
      ),
    ];
  }
  
  @override
  Widget buildLeading(BuildContext context) {
    return 
      IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => this.close(context, null)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListTile(title: Text("Resultados"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(title: Text("sugerencias"));
  }
}