import 'package:flutter/material.dart';
import 'filter_item.dart';

@immutable
class FilterSelector extends StatelessWidget {
  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
  });

  final List<Color> filters;
  final ValueChanged<Color> onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.black.withOpacity(0.3),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final color = filters[index];
          return FilterItem(
            color: color,
            onFilterSelected: () => onFilterChanged(color),
          );
        },
      ),
    );
  }
}
