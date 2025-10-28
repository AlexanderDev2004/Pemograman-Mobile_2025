import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'filter_selector.dart';
import 'displaypicture_screen.dart';

@immutable
class FilterCarousel extends StatefulWidget {
  final CameraDescription camera;

  const FilterCarousel({super.key, required this.camera});

  @override
  State<FilterCarousel> createState() => _FilterCarouselState();
}

class _FilterCarouselState extends State<FilterCarousel> {
  late CameraController _cameraController;
  final _filterColor = ValueNotifier<Color>(Colors.white);
  bool _isCameraInitialized = false;

  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 3) % Colors.primaries.length],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    await _cameraController.initialize();
    if (mounted) setState(() => _isCameraInitialized = true);
  }

  void _onFilterChanged(Color color) {
    _filterColor.value = color;
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: !_isCameraInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                // Kamera + filter overlay
                Positioned.fill(child: _buildCameraWithFilter()),

                // Carousel filter di bawah
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SafeArea(
                    child: Container(
                      height: 160,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black87],
                        ),
                      ),
                      child: FilterSelector(
                        filters: _filters,
                        onFilterChanged: _onFilterChanged,
                        onCapturePressed: _takePicture,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildCameraWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, _) {
        if (!_cameraController.value.isInitialized) {
          return const Center(child: CircularProgressIndicator());
        }

        return Stack(
          fit: StackFit.expand,
          children: [
            CameraPreview(_cameraController),
            Container(
              color: color.withOpacity(0.3),
            ),
          ],
        );
      },
    );
  }

  Future<void> _takePicture() async {
    try {
      if (!_cameraController.value.isInitialized) return;
      final picture = await _cameraController.takePicture();

      if (!mounted) return;
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DisplayPictureScreen(
            imagePath: picture.path,
            filterColor: _filterColor.value,
            filterOpacity: 0.3,
          ),
        ),
      );
    } catch (e) {
      print('Error taking picture: $e');
    }
  }
}
