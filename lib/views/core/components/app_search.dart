import 'package:cosmetics_app/views/core/app_input.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:flutter/material.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchInput(
      hint: 'search',
      suffixIcon: 'search.svg',




    );
  }
}