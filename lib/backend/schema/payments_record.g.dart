// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentsRecord> _$paymentsRecordSerializer =
    new _$PaymentsRecordSerializer();

class _$PaymentsRecordSerializer
    implements StructuredSerializer<PaymentsRecord> {
  @override
  final Iterable<Type> types = const [PaymentsRecord, _$PaymentsRecord];
  @override
  final String wireName = 'PaymentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.balance;
    if (value != null) {
      result
        ..add('balance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PaymentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentsRecord extends PaymentsRecord {
  @override
  final int? balance;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PaymentsRecord([void Function(PaymentsRecordBuilder)? updates]) =>
      (new PaymentsRecordBuilder()..update(updates))._build();

  _$PaymentsRecord._({this.balance, this.uid, this.ffRef}) : super._();

  @override
  PaymentsRecord rebuild(void Function(PaymentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentsRecordBuilder toBuilder() =>
      new PaymentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentsRecord &&
        balance == other.balance &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, balance.hashCode), uid.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentsRecord')
          ..add('balance', balance)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PaymentsRecordBuilder
    implements Builder<PaymentsRecord, PaymentsRecordBuilder> {
  _$PaymentsRecord? _$v;

  int? _balance;
  int? get balance => _$this._balance;
  set balance(int? balance) => _$this._balance = balance;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PaymentsRecordBuilder() {
    PaymentsRecord._initializeBuilder(this);
  }

  PaymentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _balance = $v.balance;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentsRecord;
  }

  @override
  void update(void Function(PaymentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentsRecord build() => _build();

  _$PaymentsRecord _build() {
    final _$result =
        _$v ?? new _$PaymentsRecord._(balance: balance, uid: uid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
