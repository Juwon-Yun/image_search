// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainStateFreezed _$MainStateFreezedFromJson(Map<String, dynamic> json) {
  return _MainStateFreezed.fromJson(json);
}

/// @nodoc
mixin _$MainStateFreezed {
  List<Photo> get photos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateFreezedCopyWith<MainStateFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateFreezedCopyWith<$Res> {
  factory $MainStateFreezedCopyWith(
          MainStateFreezed value, $Res Function(MainStateFreezed) then) =
      _$MainStateFreezedCopyWithImpl<$Res>;
  $Res call({List<Photo> photos, bool isLoading});
}

/// @nodoc
class _$MainStateFreezedCopyWithImpl<$Res>
    implements $MainStateFreezedCopyWith<$Res> {
  _$MainStateFreezedCopyWithImpl(this._value, this._then);

  final MainStateFreezed _value;
  // ignore: unused_field
  final $Res Function(MainStateFreezed) _then;

  @override
  $Res call({
    Object? photos = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MainStateFreezedCopyWith<$Res>
    implements $MainStateFreezedCopyWith<$Res> {
  factory _$$_MainStateFreezedCopyWith(
          _$_MainStateFreezed value, $Res Function(_$_MainStateFreezed) then) =
      __$$_MainStateFreezedCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> photos, bool isLoading});
}

/// @nodoc
class __$$_MainStateFreezedCopyWithImpl<$Res>
    extends _$MainStateFreezedCopyWithImpl<$Res>
    implements _$$_MainStateFreezedCopyWith<$Res> {
  __$$_MainStateFreezedCopyWithImpl(
      _$_MainStateFreezed _value, $Res Function(_$_MainStateFreezed) _then)
      : super(_value, (v) => _then(v as _$_MainStateFreezed));

  @override
  _$_MainStateFreezed get _value => super._value as _$_MainStateFreezed;

  @override
  $Res call({
    Object? photos = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_MainStateFreezed(
      photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainStateFreezed implements _MainStateFreezed {
  _$_MainStateFreezed(final List<Photo> photos, this.isLoading)
      : _photos = photos;

  factory _$_MainStateFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_MainStateFreezedFromJson(json);

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MainStateFreezed(photos: $photos, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainStateFreezed &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_MainStateFreezedCopyWith<_$_MainStateFreezed> get copyWith =>
      __$$_MainStateFreezedCopyWithImpl<_$_MainStateFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainStateFreezedToJson(this);
  }
}

abstract class _MainStateFreezed implements MainStateFreezed {
  factory _MainStateFreezed(final List<Photo> photos, final bool isLoading) =
      _$_MainStateFreezed;

  factory _MainStateFreezed.fromJson(Map<String, dynamic> json) =
      _$_MainStateFreezed.fromJson;

  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateFreezedCopyWith<_$_MainStateFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}
