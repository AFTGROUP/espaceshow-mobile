import 'package:flutter/material.dart';

class SelectFilters extends StatefulWidget {
  @override
  _SelectFiltersState createState() => _SelectFiltersState();
}

class _SelectFiltersState extends State<SelectFilters> {
  String selectedCountry = "";
  String selectedCity = "";
  String selectedPeriod ="";

  List<String> countries = ['France', 'Germany', 'Italy'];
  List<String> cities = ['Paris', 'Berlin', 'Rome'];
  List<String> periods = ['Today', 'This Week', 'This Month'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSelectFilter('Country', selectedCountry, countries, (String? newValue) {
          setState(() {
            selectedCountry = newValue!;
          });
        }),
        SizedBox(height: 20),
        buildSelectFilter('City', selectedCity, cities, (String? newValue) {
          setState(() {
            selectedCity = newValue!;
          });
        }),
        SizedBox(height: 20),
        buildSelectFilter('Period', selectedPeriod, periods, (String? newValue) {
          setState(() {
            selectedPeriod = newValue!;
          });
        }),
      ],
    );
  }

  Widget buildSelectFilter(String label, String value, List<String> options, void Function(String?)  onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.map),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 10),
        DropdownButton<String>(
          value: value,
          onChanged: onChanged,
          items: options.map<DropdownMenuItem<String>>((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ],
    );
  }
}
