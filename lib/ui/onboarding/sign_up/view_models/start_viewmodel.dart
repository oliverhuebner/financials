import 'package:flutter/cupertino.dart';
import 'package:financials/data/repositories/data_repository.dart';

class SignUpViewModel extends ChangeNotifier {
  SignUpViewModel({required this.dataRepository});

  final DataRepository dataRepository;
}
