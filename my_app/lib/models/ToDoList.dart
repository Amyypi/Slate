/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ToDoList type in your schema. */
@immutable
class ToDoList extends Model {
  static const classType = const _ToDoListModelType();
  final String id;
  final String? _toDoListName;
  final String? _toDoEntryText;
  final bool? _isDone;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get toDoListName {
    return _toDoListName;
  }
  
  String? get toDoEntryText {
    return _toDoEntryText;
  }
  
  bool? get isDone {
    return _isDone;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ToDoList._internal({required this.id, toDoListName, toDoEntryText, isDone, createdAt, updatedAt}): _toDoListName = toDoListName, _toDoEntryText = toDoEntryText, _isDone = isDone, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ToDoList({String? id, String? toDoListName, String? toDoEntryText, bool? isDone}) {
    return ToDoList._internal(
      id: id == null ? UUID.getUUID() : id,
      toDoListName: toDoListName,
      toDoEntryText: toDoEntryText,
      isDone: isDone);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToDoList &&
      id == other.id &&
      _toDoListName == other._toDoListName &&
      _toDoEntryText == other._toDoEntryText &&
      _isDone == other._isDone;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ToDoList {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("toDoListName=" + "$_toDoListName" + ", ");
    buffer.write("toDoEntryText=" + "$_toDoEntryText" + ", ");
    buffer.write("isDone=" + (_isDone != null ? _isDone!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ToDoList copyWith({String? id, String? toDoListName, String? toDoEntryText, bool? isDone}) {
    return ToDoList._internal(
      id: id ?? this.id,
      toDoListName: toDoListName ?? this.toDoListName,
      toDoEntryText: toDoEntryText ?? this.toDoEntryText,
      isDone: isDone ?? this.isDone);
  }
  
  ToDoList.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _toDoListName = json['toDoListName'],
      _toDoEntryText = json['toDoEntryText'],
      _isDone = json['isDone'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'toDoListName': _toDoListName, 'toDoEntryText': _toDoEntryText, 'isDone': _isDone, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'toDoListName': _toDoListName, 'toDoEntryText': _toDoEntryText, 'isDone': _isDone, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TODOLISTNAME = QueryField(fieldName: "toDoListName");
  static final QueryField TODOENTRYTEXT = QueryField(fieldName: "toDoEntryText");
  static final QueryField ISDONE = QueryField(fieldName: "isDone");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ToDoList";
    modelSchemaDefinition.pluralName = "ToDoLists";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ToDoList.TODOLISTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ToDoList.TODOENTRYTEXT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ToDoList.ISDONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ToDoListModelType extends ModelType<ToDoList> {
  const _ToDoListModelType();
  
  @override
  ToDoList fromJson(Map<String, dynamic> jsonData) {
    return ToDoList.fromJson(jsonData);
  }
}