import 'pet_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'pet_api.enums.swagger.dart' as enums;
export 'pet_api.enums.swagger.dart';
export 'pet_api.models.swagger.dart';

part 'pet_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetApi extends ChopperService {
  static PetApi create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$PetApi(client);
    }

    final newClient = ChopperClient(
        services: [_$PetApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://petstore.swagger.io/v2');
    return _$PetApi(newClient);
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
