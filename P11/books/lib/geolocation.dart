import 'package:geolocator/geolocator.dart';

Future<Position> getUserLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Pastikan layanan lokasi aktif
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw Exception('Layanan lokasi tidak aktif. Harap aktifkan GPS.');
  }

  // Periksa izin lokasi
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Izin lokasi ditolak.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw Exception(
        'Izin lokasi ditolak permanen. Aktifkan izin lokasi di pengaturan.');
  }

  // Ambil posisi pengguna
  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}
