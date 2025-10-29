import 'package:flutter/material.dart';
import 'filter_item.dart';

@immutable
class FilterSelectorWithImage extends StatefulWidget {
  const FilterSelectorWithImage({
    super.key,
    required this.imagePath,
    required this.filters,
    required this.onFilterChanged,
    this.padding = const EdgeInsets.symmetric(vertical: 24),
  });

  final String imagePath;
  final List<Color> filters;
  final void Function(Color selectedColor) onFilterChanged;
  final EdgeInsets padding;

  @override
  State<FilterSelectorWithImage> createState() =>
      _FilterSelectorWithImageState();
}

class _FilterSelectorWithImageState extends State<FilterSelectorWithImage> {
  static const _filtersPerScreen = 5;
  static const _viewportFractionPerItem = 1.0 / _filtersPerScreen;

  late final PageController _controller;
  late int _page;

  int get filterCount => widget.filters.length;
  Color itemColor(int index) => widget.filters[index % filterCount];

  @override
  void initState() {
    super.initState();
    _page = 0;
    _controller = PageController(
      initialPage: _page,
      viewportFraction: _viewportFractionPerItem,
    );
    _controller.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    final page = (_controller.page ?? 0).round();
    if (page != _page) {
      setState(() => _page = page);
      widget.onFilterChanged(widget.filters[page]);
    }
  }

  void _onFilterTapped(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 450),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_onPageChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildShadowGradient(),
        _buildCarousel(),
        _buildSelectionRing(),
      ],
    );
  }

  Widget _buildShadowGradient() {
    return SizedBox(
      height: 200,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black],
          ),
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return Padding(
      padding: widget.padding,
      child: SizedBox(
        height: 120,
        child: PageView.builder(
          controller: _controller,
          itemCount: filterCount,
          itemBuilder: (context, index) {
            return FilterItem(
              color: itemColor(index),
              imagePath: widget.imagePath,
              onFilterSelected: () => _onFilterTapped(index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSelectionRing() {
    return IgnorePointer(
      child: Padding(
        padding: widget.padding.copyWith(bottom: 50),
        child: const SizedBox(
          width: 80,
          height: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(width: 6, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}