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


/** This is an auto generated class representing the JournalEntry type in your schema. */
@immutable
class JournalEntry extends Model {
  static const classType = const _JournalEntryModelType();
  final String id;
  final String? _journalEntryText;
  final String? _moodStatus;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get journalEntryText {
    return _journalEntryText;
  }
  
  String? get moodStatus {
    return _moodStatus;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const JournalEntry._internal({required this.id, journalEntryText, moodStatus, createdAt, updatedAt}): _journalEntryText = journalEntryText, _moodStatus = moodStatus, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory JournalEntry({String? id, String? journalEntryText, String? moodStatus}) {
    return JournalEntry._internal(
      id: id == null ? UUID.getUUID() : id,
      journalEntryText: journalEntryText,
      moodStatus: moodStatus);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JournalEntry &&
      id == other.id &&
      _journalEntryText == other._journalEntryText &&
      _moodStatus == other._moodStatus;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("JournalEntry {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("journalEntryText=" + "$_journalEntryText" + ", ");
    buffer.write("moodStatus=" + "$_moodStatus" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  JournalEntry copyWith({String? id, String? journalEntryText, String? moodStatus}) {
    return JournalEntry._internal(
      id: id ?? this.id,
      journalEntryText: journalEntryText ?? this.journalEntryText,
      moodStatus: moodStatus ?? this.moodStatus);
  }
  
  JournalEntry.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _journalEntryText = json['journalEntryText'],
      _moodStatus = json['moodStatus'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'journalEntryText': _journalEntryText, 'moodStatus': _moodStatus, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'journalEntryText': _journalEntryText, 'moodStatus': _moodStatus, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField JOURNALENTRYTEXT = QueryField(fieldName: "journalEntryText");
  static final QueryField MOODSTATUS = QueryField(fieldName: "moodStatus");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "JournalEntry";
    modelSchemaDefinition.pluralName = "JournalEntries";
    
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
      key: JournalEntry.JOURNALENTRYTEXT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: JournalEntry.MOODSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _JournalEntryModelType extends ModelType<JournalEntry> {
  const _JournalEntryModelType();
  
  @override
  JournalEntry fromJson(Map<String, dynamic> jsonData) {
    return JournalEntry.fromJson(jsonData);
  }
}