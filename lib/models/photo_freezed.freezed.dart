// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoWithFreezed _$PhotoWithFreezedFromJson(Map<String, dynamic> json) {
  return _PhotoWithFreezed.fromJson(json);
}

/// @nodoc
mixin _$PhotoWithFreezed {
  int get id => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'previewURL')
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoWithFreezedCopyWith<PhotoWithFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoWithFreezedCopyWith<$Res> {
  factory $PhotoWithFreezedCopyWith(
          PhotoWithFreezed value, $Res Function(PhotoWithFreezed) then) =
      _$PhotoWithFreezedCopyWithImpl<$Res>;
  $Res call(
      {int id, String tags, @JsonKey(name: 'previewURL') String previewUrl});
}

/// @nodoc
class _$PhotoWithFreezedCopyWithImpl<$Res>
    implements $PhotoWithFreezedCopyWith<$Res> {
  _$PhotoWithFreezedCopyWithImpl(this._value, this._then);

  final PhotoWithFreezed _value;
  // ignore: unused_field
  final $Res Function(PhotoWithFreezed) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoWithFreezedCopyWith<$Res>
    implements $PhotoWithFreezedCopyWith<$Res> {
  factory _$$_PhotoWithFreezedCopyWith(
          _$_PhotoWithFreezed value, $Res Function(_$_PhotoWithFreezed) then) =
      __$$_PhotoWithFreezedCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String tags, @JsonKey(name: 'previewURL') String previewUrl});
}

/// @nodoc
class __$$_PhotoWithFreezedCopyWithImpl<$Res>
    extends _$PhotoWithFreezedCopyWithImpl<$Res>
    implements _$$_PhotoWithFreezedCopyWith<$Res> {
  __$$_PhotoWithFreezedCopyWithImpl(
      _$_PhotoWithFreezed _value, $Res Function(_$_PhotoWithFreezed) _then)
      : super(_value, (v) => _then(v as _$_PhotoWithFreezed));

  @override
  _$_PhotoWithFreezed get _value => super._value as _$_PhotoWithFreezed;

  @override
  $Res call({
    Object? id = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$_PhotoWithFreezed(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoWithFreezed
    with DiagnosticableTreeMixin
    implements _PhotoWithFreezed {
  _$_PhotoWithFreezed(
      {required this.id,
      required this.tags,
      @JsonKey(name: 'previewURL') required this.previewUrl});

  factory _$_PhotoWithFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoWithFreezedFromJson(json);

  @override
  final int id;
  @override
  final String tags;
  @override
  @JsonKey(name: 'previewURL')
  final String previewUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoWithFreezed(id: $id, tags: $tags, previewUrl: $previewUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoWithFreezed'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('previewUrl', previewUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoWithFreezed &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.previewUrl, previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(previewUrl));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoWithFreezedCopyWith<_$_PhotoWithFreezed> get copyWith =>
      __$$_PhotoWithFreezedCopyWithImpl<_$_PhotoWithFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoWithFreezedToJson(this);
  }
}

abstract class _PhotoWithFreezed implements PhotoWithFreezed {
  factory _PhotoWithFreezed(
          {required final int id,
          required final String tags,
          @JsonKey(name: 'previewURL') required final String previewUrl}) =
      _$_PhotoWithFreezed;

  factory _PhotoWithFreezed.fromJson(Map<String, dynamic> json) =
      _$_PhotoWithFreezed.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previewURL')
  String get previewUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoWithFreezedCopyWith<_$_PhotoWithFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}
