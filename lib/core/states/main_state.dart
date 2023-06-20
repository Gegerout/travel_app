import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/data/repositories/data_repository.dart';

final mainProvider = FutureProvider((ref) async {
  final data = await DataRepository().getUser();
  return data;
});
