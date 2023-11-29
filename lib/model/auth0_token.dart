//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import '/api_helper.dart';


class Auth0Token {
  /// Returns a new [Auth0Token] instance.
  Auth0Token({
    required this.accessToken,
    required this.scope,
    this.expiresIn,
    required this.tokenType,
  });

  String accessToken;

  String scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? expiresIn;

  Auth0TokenTokenTypeEnum tokenType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Auth0Token &&
     other.accessToken == accessToken &&
     other.scope == scope &&
     other.expiresIn == expiresIn &&
     other.tokenType == tokenType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken.hashCode) +
    (scope.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (tokenType.hashCode);

  @override
  String toString() => 'Auth0Token[accessToken=$accessToken, scope=$scope, expiresIn=$expiresIn, tokenType=$tokenType]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    _json[r'access_token'] = accessToken;
    _json[r'scope'] = scope;
    if (this.expiresIn != null) {
    _json[r'expires_in'] = expiresIn;
    }
    _json[r'token_type'] = tokenType.toJson();
    return _json;
  }

  /// Returns a new [Auth0Token] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Auth0Token? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Auth0Token[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Auth0Token[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Auth0Token(
        accessToken: mapValueOfType<String>(json, r'access_token')!,
        scope: mapValueOfType<String>(json, r'scope')!,
        expiresIn: num.parse('${json[r'expires_in']}'),
        tokenType: Auth0TokenTokenTypeEnum.fromJson(json[r'token_type'])!,
      );
    }
    return null;
  }

  static List<Auth0Token> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Auth0Token>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Auth0Token.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Auth0Token> mapFromJson(dynamic json) {
    final map = <String, Auth0Token>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Auth0Token.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Auth0Token-objects as value to a dart map
  static Map<String, List<Auth0Token>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Auth0Token>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Auth0Token.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  static Map<String, dynamic> mapToJson(Map<String, Auth0Token> map) {
    final jsonMap = <String, dynamic>{};
    map.forEach((key, value) {
      jsonMap[key] = value.toJson();
    });
    return jsonMap;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'access_token',
    'scope',
    'token_type',
  };
}


class Auth0TokenTokenTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const Auth0TokenTokenTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bearer = Auth0TokenTokenTypeEnum._(r'Bearer');

  /// List of all possible values in this [enum][Auth0TokenTokenTypeEnum].
  static const values = <Auth0TokenTokenTypeEnum>[
    bearer,
  ];

  static Auth0TokenTokenTypeEnum? fromJson(dynamic value) => Auth0TokenTokenTypeEnumTypeTransformer().decode(value);

  static List<Auth0TokenTokenTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Auth0TokenTokenTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Auth0TokenTokenTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Auth0TokenTokenTypeEnum] to String,
/// and [decode] dynamic data back to [Auth0TokenTokenTypeEnum].
class Auth0TokenTokenTypeEnumTypeTransformer {
  factory Auth0TokenTokenTypeEnumTypeTransformer() => _instance ??= const Auth0TokenTokenTypeEnumTypeTransformer._();

  const Auth0TokenTokenTypeEnumTypeTransformer._();

  String encode(Auth0TokenTokenTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Auth0TokenTokenTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Auth0TokenTokenTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Bearer': return Auth0TokenTokenTypeEnum.bearer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Auth0TokenTokenTypeEnumTypeTransformer] instance.
  static Auth0TokenTokenTypeEnumTypeTransformer? _instance;
}


