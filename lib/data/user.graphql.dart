import 'package:gql/ast.dart';

class Query$FetchUser {
  Query$FetchUser({
    this.user,
    required this.$__typename,
  });

  factory Query$FetchUser.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser(
      user: l$user == null
          ? null
          : Query$FetchUser$user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchUser$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser on Query$FetchUser {
  CopyWith$Query$FetchUser<Query$FetchUser> get copyWith =>
      CopyWith$Query$FetchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUser<TRes> {
  factory CopyWith$Query$FetchUser(
    Query$FetchUser instance,
    TRes Function(Query$FetchUser) then,
  ) = _CopyWithImpl$Query$FetchUser;

  factory CopyWith$Query$FetchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser;

  TRes call({
    Query$FetchUser$user? user,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user<TRes> get user;
}

class _CopyWithImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithImpl$Query$FetchUser(
    this._instance,
    this._then,
  );

  final Query$FetchUser _instance;

  final TRes Function(Query$FetchUser) _then;

  static const _undefined = {};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser(
        user: user == _undefined
            ? _instance.user
            : (user as Query$FetchUser$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$FetchUser$user.stub(_then(_instance))
        : CopyWith$Query$FetchUser$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithStubImpl$Query$FetchUser(this._res);

  TRes _res;

  call({
    Query$FetchUser$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user<TRes> get user =>
      CopyWith$Query$FetchUser$user.stub(_res);
}

const documentNodeQueryFetchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'login'),
            value: EnumValueNode(name: NameNode(value: 'String')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'type'),
            alias: NameNode(value: 'type'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'login'),
            alias: NameNode(value: 'login'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bioHTML'),
            alias: NameNode(value: 'bioHTML'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: NameNode(value: 'avatarUrl'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'repositories'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'description'),
                        alias: NameNode(value: 'description'),
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: NameNode(value: 'name'),
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$FetchUser$user {
  Query$FetchUser$user({
    this.type,
    this.login,
    this.bioHTML,
    this.avatarUrl,
    this.repositories,
    required this.$__typename,
  });

  factory Query$FetchUser$user.fromJson(Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$login = json['login'];
    final l$bioHTML = json['bioHTML'];
    final l$avatarUrl = json['avatarUrl'];
    final l$repositories = json['repositories'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user(
      type: (l$type as String?),
      login: (l$login as String?),
      bioHTML: (l$bioHTML as String?),
      avatarUrl: (l$avatarUrl as String?),
      repositories: l$repositories == null
          ? null
          : Query$FetchUser$user$repositories.fromJson(
              (l$repositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? type;

  final String? login;

  final String? bioHTML;

  final String? avatarUrl;

  final Query$FetchUser$user$repositories? repositories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$login = login;
    _resultData['login'] = l$login;
    final l$bioHTML = bioHTML;
    _resultData['bioHTML'] = l$bioHTML;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$repositories = repositories;
    _resultData['repositories'] = l$repositories?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$login = login;
    final l$bioHTML = bioHTML;
    final l$avatarUrl = avatarUrl;
    final l$repositories = repositories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$login,
      l$bioHTML,
      l$avatarUrl,
      l$repositories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$bioHTML = bioHTML;
    final lOther$bioHTML = other.bioHTML;
    if (l$bioHTML != lOther$bioHTML) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$repositories = repositories;
    final lOther$repositories = other.repositories;
    if (l$repositories != lOther$repositories) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user on Query$FetchUser$user {
  CopyWith$Query$FetchUser$user<Query$FetchUser$user> get copyWith =>
      CopyWith$Query$FetchUser$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUser$user<TRes> {
  factory CopyWith$Query$FetchUser$user(
    Query$FetchUser$user instance,
    TRes Function(Query$FetchUser$user) then,
  ) = _CopyWithImpl$Query$FetchUser$user;

  factory CopyWith$Query$FetchUser$user.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user;

  TRes call({
    String? type,
    String? login,
    String? bioHTML,
    String? avatarUrl,
    Query$FetchUser$user$repositories? repositories,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories;
}

class _CopyWithImpl$Query$FetchUser$user<TRes>
    implements CopyWith$Query$FetchUser$user<TRes> {
  _CopyWithImpl$Query$FetchUser$user(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user _instance;

  final TRes Function(Query$FetchUser$user) _then;

  static const _undefined = {};

  TRes call({
    Object? type = _undefined,
    Object? login = _undefined,
    Object? bioHTML = _undefined,
    Object? avatarUrl = _undefined,
    Object? repositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user(
        type: type == _undefined ? _instance.type : (type as String?),
        login: login == _undefined ? _instance.login : (login as String?),
        bioHTML:
            bioHTML == _undefined ? _instance.bioHTML : (bioHTML as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        repositories: repositories == _undefined
            ? _instance.repositories
            : (repositories as Query$FetchUser$user$repositories?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories {
    final local$repositories = _instance.repositories;
    return local$repositories == null
        ? CopyWith$Query$FetchUser$user$repositories.stub(_then(_instance))
        : CopyWith$Query$FetchUser$user$repositories(
            local$repositories, (e) => call(repositories: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser$user<TRes>
    implements CopyWith$Query$FetchUser$user<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user(this._res);

  TRes _res;

  call({
    String? type,
    String? login,
    String? bioHTML,
    String? avatarUrl,
    Query$FetchUser$user$repositories? repositories,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user$repositories<TRes> get repositories =>
      CopyWith$Query$FetchUser$user$repositories.stub(_res);
}

class Query$FetchUser$user$repositories {
  Query$FetchUser$user$repositories({
    this.edges,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchUser$user$repositories$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchUser$user$repositories$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories
    on Query$FetchUser$user$repositories {
  CopyWith$Query$FetchUser$user$repositories<Query$FetchUser$user$repositories>
      get copyWith => CopyWith$Query$FetchUser$user$repositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories(
    Query$FetchUser$user$repositories instance,
    TRes Function(Query$FetchUser$user$repositories) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories;

  factory CopyWith$Query$FetchUser$user$repositories.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories;

  TRes call({
    List<Query$FetchUser$user$repositories$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchUser$user$repositories$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchUser$user$repositories$edges<
                      Query$FetchUser$user$repositories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchUser$user$repositories<TRes>
    implements CopyWith$Query$FetchUser$user$repositories<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories _instance;

  final TRes Function(Query$FetchUser$user$repositories) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchUser$user$repositories$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$FetchUser$user$repositories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchUser$user$repositories$edges<
                          Query$FetchUser$user$repositories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchUser$user$repositories$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories<TRes>
    implements CopyWith$Query$FetchUser$user$repositories<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories(this._res);

  TRes _res;

  call({
    List<Query$FetchUser$user$repositories$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$FetchUser$user$repositories$edges {
  Query$FetchUser$user$repositories$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories$edges(
      node: l$node == null
          ? null
          : Query$FetchUser$user$repositories$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchUser$user$repositories$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories$edges
    on Query$FetchUser$user$repositories$edges {
  CopyWith$Query$FetchUser$user$repositories$edges<
          Query$FetchUser$user$repositories$edges>
      get copyWith => CopyWith$Query$FetchUser$user$repositories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories$edges(
    Query$FetchUser$user$repositories$edges instance,
    TRes Function(Query$FetchUser$user$repositories$edges) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories$edges;

  factory CopyWith$Query$FetchUser$user$repositories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories$edges;

  TRes call({
    Query$FetchUser$user$repositories$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchUser$user$repositories$edges<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories$edges(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories$edges _instance;

  final TRes Function(Query$FetchUser$user$repositories$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchUser$user$repositories$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchUser$user$repositories$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$FetchUser$user$repositories$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories$edges<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories$edges(this._res);

  TRes _res;

  call({
    Query$FetchUser$user$repositories$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> get node =>
      CopyWith$Query$FetchUser$user$repositories$edges$node.stub(_res);
}

class Query$FetchUser$user$repositories$edges$node {
  Query$FetchUser$user$repositories$edges$node({
    this.description,
    this.name,
    required this.$__typename,
  });

  factory Query$FetchUser$user$repositories$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser$user$repositories$edges$node(
      description: (l$description as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser$user$repositories$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUser$user$repositories$edges$node
    on Query$FetchUser$user$repositories$edges$node {
  CopyWith$Query$FetchUser$user$repositories$edges$node<
          Query$FetchUser$user$repositories$edges$node>
      get copyWith => CopyWith$Query$FetchUser$user$repositories$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  factory CopyWith$Query$FetchUser$user$repositories$edges$node(
    Query$FetchUser$user$repositories$edges$node instance,
    TRes Function(Query$FetchUser$user$repositories$edges$node) then,
  ) = _CopyWithImpl$Query$FetchUser$user$repositories$edges$node;

  factory CopyWith$Query$FetchUser$user$repositories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node;

  TRes call({
    String? description,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUser$user$repositories$edges$node<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  _CopyWithImpl$Query$FetchUser$user$repositories$edges$node(
    this._instance,
    this._then,
  );

  final Query$FetchUser$user$repositories$edges$node _instance;

  final TRes Function(Query$FetchUser$user$repositories$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser$user$repositories$edges$node(
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node<TRes>
    implements CopyWith$Query$FetchUser$user$repositories$edges$node<TRes> {
  _CopyWithStubImpl$Query$FetchUser$user$repositories$edges$node(this._res);

  TRes _res;

  call({
    String? description,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
