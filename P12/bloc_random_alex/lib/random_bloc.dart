import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // Controller input (event)
  final _generateRandomController = StreamController<void>();
  // Controller output (state)
  final _randomNumberController = StreamController<int>();

  // Sink (untuk input)
  Sink<void> get generateRandom => _generateRandomController.sink;

  // Stream (untuk output)
  Stream<int> get randomNumber => _randomNumberController.stream;

  RandomNumberBloc() {
    // Saat ada event dari tombol, hasilkan angka acak
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(100);
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}
