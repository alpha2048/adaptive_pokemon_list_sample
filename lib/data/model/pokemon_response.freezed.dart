// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
class _$PokemonResponseTearOff {
  const _$PokemonResponseTearOff();

  _PokemonResponse call(
      {required int id, required PokemonSpriteResponse sprites}) {
    return _PokemonResponse(
      id: id,
      sprites: sprites,
    );
  }

  PokemonResponse fromJson(Map<String, Object> json) {
    return PokemonResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonResponse = _$PokemonResponseTearOff();

/// @nodoc
mixin _$PokemonResponse {
  int get id => throw _privateConstructorUsedError;
  PokemonSpriteResponse get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res>;
  $Res call({int id, PokemonSpriteResponse sprites});

  $PokemonSpriteResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  final PokemonResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sprites = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteResponse,
    ));
  }

  @override
  $PokemonSpriteResponseCopyWith<$Res> get sprites {
    return $PokemonSpriteResponseCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonResponseCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$PokemonResponseCopyWith(
          _PokemonResponse value, $Res Function(_PokemonResponse) then) =
      __$PokemonResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, PokemonSpriteResponse sprites});

  @override
  $PokemonSpriteResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class __$PokemonResponseCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res>
    implements _$PokemonResponseCopyWith<$Res> {
  __$PokemonResponseCopyWithImpl(
      _PokemonResponse _value, $Res Function(_PokemonResponse) _then)
      : super(_value, (v) => _then(v as _PokemonResponse));

  @override
  _PokemonResponse get _value => super._value as _PokemonResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? sprites = freezed,
  }) {
    return _then(_PokemonResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpriteResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonResponse implements _PokemonResponse {
  const _$_PokemonResponse({required this.id, required this.sprites});

  factory _$_PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonResponseFromJson(json);

  @override
  final int id;
  @override
  final PokemonSpriteResponse sprites;

  @override
  String toString() {
    return 'PokemonResponse(id: $id, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sprites, sprites) ||
                const DeepCollectionEquality().equals(other.sprites, sprites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sprites);

  @JsonKey(ignore: true)
  @override
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith =>
      __$PokemonResponseCopyWithImpl<_PokemonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonResponseToJson(this);
  }
}

abstract class _PokemonResponse implements PokemonResponse {
  const factory _PokemonResponse(
      {required int id,
      required PokemonSpriteResponse sprites}) = _$_PokemonResponse;

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  PokemonSpriteResponse get sprites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonResponseCopyWith<_PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
