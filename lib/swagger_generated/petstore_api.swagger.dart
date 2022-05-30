// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'petstore_api.enums.swagger.dart' as enums;
export 'petstore_api.enums.swagger.dart';

part 'petstore_api.swagger.chopper.dart';
part 'petstore_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetstoreApi extends ChopperService {
  static PetstoreApi create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$PetstoreApi(client);
    }

    final newClient = ChopperClient(
        services: [_$PetstoreApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://petstore.swagger.io/v2');
    return _$PetstoreApi(newClient);
  }

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  Future<chopper.Response<ApiResponse>> uploadFile(
      {required String? petId,
      String? additionalMetadata,
      List<String>? file}) {
    generatedMapping.putIfAbsent(
        ApiResponse, () => ApiResponse.fromJsonFactory);

    return _uploadFile(
        petId: petId, additionalMetadata: additionalMetadata, file: file);
  }

  ///uploads an image
  ///@param petId ID of pet to update
  ///@param additionalMetadata Additional data to pass to server
  ///@param file file to upload
  @Post(path: '/pet/{petId}/uploadImage', optionalBody: true)
  Future<chopper.Response<ApiResponse>> _uploadFile(
      {@Path('petId') required String? petId,
      @Field('additionalMetadata') String? additionalMetadata,
      @Field('file') List<String>? file});

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> addPet({required Pet? body}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _addPet(body: body);
  }

  ///Add a new pet to the store
  ///@param body Pet object that needs to be added to the store
  @Post(path: '/pet')
  Future<chopper.Response> _addPet({@Body() required Pet? body});

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  Future<chopper.Response> updatePet({required Pet? body}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _updatePet(body: body);
  }

  ///Update an existing pet
  ///@param body Pet object that needs to be added to the store
  @Put(path: '/pet')
  Future<chopper.Response> _updatePet({@Body() required Pet? body});

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  Future<chopper.Response<List<Pet>>> findPetsByStatus(
      {required enums.PetFindByStatusGetStatus? status}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _findPetsByStatus(
        status: enums.$PetFindByStatusGetStatusMap[status]?.toString());
  }

  ///Finds Pets by status
  ///@param status Status values that need to be considered for filter
  @Get(path: '/pet/findByStatus')
  Future<chopper.Response<List<Pet>>> _findPetsByStatus(
      {@Query('status') required String? status});

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  Future<chopper.Response<List<Pet>>> findPetsByTags(
      {required List<String>? tags}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _findPetsByTags(tags: tags);
  }

  ///Finds Pets by tags
  ///@param tags Tags to filter by
  @Get(path: '/pet/findByTags')
  Future<chopper.Response<List<Pet>>> _findPetsByTags(
      {@Query('tags') required List<String>? tags});

  ///Find pet by ID
  ///@param petId ID of pet to return
  Future<chopper.Response<Pet>> getPetById(
      {required String? petId, String? apiKey}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _getPetById(petId: petId, apiKey: apiKey);
  }

  ///Find pet by ID
  ///@param petId ID of pet to return
  @Get(path: '/pet/{petId}')
  Future<chopper.Response<Pet>> _getPetById(
      {@Path('petId') required String? petId,
      @Header('api_key') String? apiKey});

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  Future<chopper.Response> updatePetWithForm(
      {required String? petId, String? name, String? status}) {
    return _updatePetWithForm(petId: petId, name: name, status: status);
  }

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Updated name of the pet
  ///@param status Updated status of the pet
  @Post(path: '/pet/{petId}', optionalBody: true)
  Future<chopper.Response> _updatePetWithForm(
      {@Path('petId') required String? petId,
      @Field('name') String? name,
      @Field('status') String? status});

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  Future<chopper.Response> deletePet({String? apiKey, required String? petId}) {
    return _deletePet(apiKey: apiKey, petId: petId);
  }

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  @Delete(path: '/pet/{petId}')
  Future<chopper.Response> _deletePet(
      {@Header('api_key') String? apiKey,
      @Path('petId') required String? petId});

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  Future<chopper.Response<Order>> placeOrder({required Order? body}) {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    return _placeOrder(body: body);
  }

  ///Place an order for a pet
  ///@param body order placed for purchasing the pet
  @Post(path: '/store/order')
  Future<chopper.Response<Order>> _placeOrder({@Body() required Order? body});

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  Future<chopper.Response<Order>> getOrderById({required String? orderId}) {
    generatedMapping.putIfAbsent(Order, () => Order.fromJsonFactory);

    return _getOrderById(orderId: orderId);
  }

  ///Find purchase order by ID
  ///@param orderId ID of pet that needs to be fetched
  @Get(path: '/store/order/{orderId}')
  Future<chopper.Response<Order>> _getOrderById(
      {@Path('orderId') required String? orderId});

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  Future<chopper.Response> deleteOrder({required String? orderId}) {
    return _deleteOrder(orderId: orderId);
  }

  ///Delete purchase order by ID
  ///@param orderId ID of the order that needs to be deleted
  @Delete(path: '/store/order/{orderId}')
  Future<chopper.Response> _deleteOrder(
      {@Path('orderId') required String? orderId});

  ///Returns pet inventories by status
  Future<chopper.Response<Object>> getInventory({String? apiKey}) {
    return _getInventory(apiKey: apiKey);
  }

  ///Returns pet inventories by status
  @Get(path: '/store/inventory')
  Future<chopper.Response<Object>> _getInventory(
      {@Header('api_key') String? apiKey});

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> createUsersWithArrayInput(
      {required List<User>? body}) {
    return _createUsersWithArrayInput(body: body);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @Post(path: '/user/createWithArray')
  Future<chopper.Response> _createUsersWithArrayInput(
      {@Body() required List<User>? body});

  ///Creates list of users with given input array
  ///@param body List of user object
  Future<chopper.Response> createUsersWithListInput(
      {required List<User>? body}) {
    return _createUsersWithListInput(body: body);
  }

  ///Creates list of users with given input array
  ///@param body List of user object
  @Post(path: '/user/createWithList')
  Future<chopper.Response> _createUsersWithListInput(
      {@Body() required List<User>? body});

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  Future<chopper.Response<User>> getUserByName({required String? username}) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _getUserByName(username: username);
  }

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  @Get(path: '/user/{username}')
  Future<chopper.Response<User>> _getUserByName(
      {@Path('username') required String? username});

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  Future<chopper.Response> updateUser(
      {required String? username, required User? body}) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _updateUser(username: username, body: body);
  }

  ///Updated user
  ///@param username name that need to be updated
  ///@param body Updated user object
  @Put(path: '/user/{username}')
  Future<chopper.Response> _updateUser(
      {@Path('username') required String? username,
      @Body() required User? body});

  ///Delete user
  ///@param username The name that needs to be deleted
  Future<chopper.Response> deleteUser({required String? username}) {
    return _deleteUser(username: username);
  }

  ///Delete user
  ///@param username The name that needs to be deleted
  @Delete(path: '/user/{username}')
  Future<chopper.Response> _deleteUser(
      {@Path('username') required String? username});

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  Future<chopper.Response<String>> loginUser(
      {required String? username, required String? password}) {
    return _loginUser(username: username, password: password);
  }

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  @Get(path: '/user/login')
  Future<chopper.Response<String>> _loginUser(
      {@Query('username') required String? username,
      @Query('password') required String? password});

  ///Logs out current logged in user session
  Future<chopper.Response> logoutUser() {
    return _logoutUser();
  }

  ///Logs out current logged in user session
  @Get(path: '/user/logout')
  Future<chopper.Response> _logoutUser();

  ///Create user
  ///@param body Created user object
  Future<chopper.Response> createUser({required User? body}) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _createUser(body: body);
  }

  ///Create user
  ///@param body Created user object
  @Post(path: '/user')
  Future<chopper.Response> _createUser({@Body() required User? body});
}

@JsonSerializable(explicitToJson: true)
class ApiResponse {
  ApiResponse({
    this.code,
    this.type,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  static const fromJsonFactory = _$ApiResponseFromJson;
  static const toJsonFactory = _$ApiResponseToJson;
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiResponseExtension on ApiResponse {
  ApiResponse copyWith({int? code, String? type, String? message}) {
    return ApiResponse(
        code: code ?? this.code,
        type: type ?? this.type,
        message: message ?? this.message);
  }
}

@JsonSerializable(explicitToJson: true)
class Category {
  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final num? id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$CategoryFromJson;
  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CategoryExtension on Category {
  Category copyWith({num? id, String? name}) {
    return Category(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Pet {
  Pet({
    this.id,
    this.category,
    required this.name,
    required this.photoUrls,
    this.tags,
    this.status,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final num? id;
  @JsonKey(name: 'category', includeIfNull: false)
  final Category? category;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'photoUrls', includeIfNull: false, defaultValue: <String>[])
  final List<String> photoUrls;
  @JsonKey(name: 'tags', includeIfNull: false, defaultValue: <Tag>[])
  final List<Tag>? tags;
  @JsonKey(
      name: 'status',
      includeIfNull: false,
      toJson: petStatusToJson,
      fromJson: petStatusFromJson)
  final enums.PetStatus? status;
  static const fromJsonFactory = _$PetFromJson;
  static const toJsonFactory = _$PetToJson;
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrls, photoUrls) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrls, photoUrls)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrls) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $PetExtension on Pet {
  Pet copyWith(
      {num? id,
      Category? category,
      String? name,
      List<String>? photoUrls,
      List<Tag>? tags,
      enums.PetStatus? status}) {
    return Pet(
        id: id ?? this.id,
        category: category ?? this.category,
        name: name ?? this.name,
        photoUrls: photoUrls ?? this.photoUrls,
        tags: tags ?? this.tags,
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class Tag {
  Tag({
    this.id,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final num? id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$TagFromJson;
  static const toJsonFactory = _$TagToJson;
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tag &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $TagExtension on Tag {
  Tag copyWith({num? id, String? name}) {
    return Tag(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  Order({
    this.id,
    this.petId,
    this.quantity,
    this.shipDate,
    this.status,
    this.complete,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final num? id;
  @JsonKey(name: 'petId', includeIfNull: false)
  final num? petId;
  @JsonKey(name: 'quantity', includeIfNull: false)
  final int? quantity;
  @JsonKey(name: 'shipDate', includeIfNull: false)
  final DateTime? shipDate;
  @JsonKey(
      name: 'status',
      includeIfNull: false,
      toJson: orderStatusToJson,
      fromJson: orderStatusFromJson)
  final enums.OrderStatus? status;
  @JsonKey(name: 'complete', includeIfNull: false)
  final bool? complete;
  static const fromJsonFactory = _$OrderFromJson;
  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.shipDate, shipDate) ||
                const DeepCollectionEquality()
                    .equals(other.shipDate, shipDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(petId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(shipDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(complete) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {num? id,
      num? petId,
      int? quantity,
      DateTime? shipDate,
      enums.OrderStatus? status,
      bool? complete}) {
    return Order(
        id: id ?? this.id,
        petId: petId ?? this.petId,
        quantity: quantity ?? this.quantity,
        shipDate: shipDate ?? this.shipDate,
        status: status ?? this.status,
        complete: complete ?? this.complete);
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'id', includeIfNull: false)
  final num? id;
  @JsonKey(name: 'username', includeIfNull: false)
  final String? username;
  @JsonKey(name: 'firstName', includeIfNull: false)
  final String? firstName;
  @JsonKey(name: 'lastName', includeIfNull: false)
  final String? lastName;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'password', includeIfNull: false)
  final String? password;
  @JsonKey(name: 'phone', includeIfNull: false)
  final String? phone;
  @JsonKey(name: 'userStatus', includeIfNull: false)
  final int? userStatus;
  static const fromJsonFactory = _$UserFromJson;
  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(userStatus) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith(
      {num? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? phone,
      int? userStatus}) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        userStatus: userStatus ?? this.userStatus);
  }
}

String? petFindByStatusGetStatusToJson(
    enums.PetFindByStatusGetStatus? petFindByStatusGetStatus) {
  return enums.$PetFindByStatusGetStatusMap[petFindByStatusGetStatus];
}

enums.PetFindByStatusGetStatus petFindByStatusGetStatusFromJson(
  Object? petFindByStatusGetStatus, [
  enums.PetFindByStatusGetStatus? defaultValue,
]) {
  if (petFindByStatusGetStatus is String) {
    return enums.$PetFindByStatusGetStatusMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                petFindByStatusGetStatus.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PetFindByStatusGetStatus.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PetFindByStatusGetStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PetFindByStatusGetStatus.swaggerGeneratedUnknown;
}

List<String> petFindByStatusGetStatusListToJson(
    List<enums.PetFindByStatusGetStatus>? petFindByStatusGetStatus) {
  if (petFindByStatusGetStatus == null) {
    return [];
  }

  return petFindByStatusGetStatus
      .map((e) => enums.$PetFindByStatusGetStatusMap[e]!)
      .toList();
}

List<enums.PetFindByStatusGetStatus> petFindByStatusGetStatusListFromJson(
  List? petFindByStatusGetStatus, [
  List<enums.PetFindByStatusGetStatus>? defaultValue,
]) {
  if (petFindByStatusGetStatus == null) {
    return defaultValue ?? [];
  }

  return petFindByStatusGetStatus
      .map((e) => petFindByStatusGetStatusFromJson(e.toString()))
      .toList();
}

String? petStatusToJson(enums.PetStatus? petStatus) {
  return enums.$PetStatusMap[petStatus];
}

enums.PetStatus petStatusFromJson(
  Object? petStatus, [
  enums.PetStatus? defaultValue,
]) {
  if (petStatus is String) {
    return enums.$PetStatusMap.entries
        .firstWhere(
            (element) => element.value.toLowerCase() == petStatus.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.PetStatus.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PetStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PetStatus.swaggerGeneratedUnknown;
}

List<String> petStatusListToJson(List<enums.PetStatus>? petStatus) {
  if (petStatus == null) {
    return [];
  }

  return petStatus.map((e) => enums.$PetStatusMap[e]!).toList();
}

List<enums.PetStatus> petStatusListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue ?? [];
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

String? orderStatusToJson(enums.OrderStatus? orderStatus) {
  return enums.$OrderStatusMap[orderStatus];
}

enums.OrderStatus orderStatusFromJson(
  Object? orderStatus, [
  enums.OrderStatus? defaultValue,
]) {
  if (orderStatus is String) {
    return enums.$OrderStatusMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == orderStatus.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.OrderStatus.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$OrderStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.OrderStatus.swaggerGeneratedUnknown;
}

List<String> orderStatusListToJson(List<enums.OrderStatus>? orderStatus) {
  if (orderStatus == null) {
    return [];
  }

  return orderStatus.map((e) => enums.$OrderStatusMap[e]!).toList();
}

List<enums.OrderStatus> orderStatusListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue ?? [];
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
