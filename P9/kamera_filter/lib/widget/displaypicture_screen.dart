import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kamera_filter/widget/filter_selector.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  late Color _selectedFilter; // warna filter aktif

  // 🎨 Daftar filter contoh (bisa kamu ubah nanti)
  final List<Color> _filters = [
    Colors.transparent, // tanpa filter
    Colors.orange.withValues(alpha: 0.3),
    Colors.blueAccent.withValues(alpha: 0.3),
    Colors.pinkAccent.withValues(alpha: 0.3),
    Colors.greenAccent.withValues(alpha: 0.3),
    Colors.grey.withValues(alpha: 0.4),
  ];

  @override
  void initState() {
    super.initState();
    _selectedFilter = _filters.first; // default: tanpa filter
  }

  void _onFilterChanged(Color color) {
    setState(() => _selectedFilter = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apply Filter')),
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedFilter,
                BlendMode.overlay, // efek warna menyatu
              ),
              child: Image.file(File(widget.imagePath), fit: BoxFit.cover),
            ),
          ),

          // 🎛️ Filter carousel di bawah layar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelectorWithImage(
              imagePath: widget.imagePath,
              filters: _filters,
              onFilterChanged: _onFilterChanged,
            ),
          ),
        ],
      ),
    );
  }
}