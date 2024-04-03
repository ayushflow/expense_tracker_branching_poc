// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseStruct extends BaseStruct {
  ExpenseStruct({
    double? amount,
    String? title,
  })  : _amount = amount,
        _title = title;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  static ExpenseStruct fromMap(Map<String, dynamic> data) => ExpenseStruct(
        amount: castToType<double>(data['amount']),
        title: data['title'] as String?,
      );

  static ExpenseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExpenseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExpenseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpenseStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExpenseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpenseStruct &&
        amount == other.amount &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, title]);
}

ExpenseStruct createExpenseStruct({
  double? amount,
  String? title,
}) =>
    ExpenseStruct(
      amount: amount,
      title: title,
    );
