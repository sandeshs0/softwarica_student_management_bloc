import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:softwarica_student_management_bloc/app/constants/hive_table_constant.dart';
import 'package:softwarica_student_management_bloc/features/batch/domain/entity/batch_entity.dart';
import 'package:uuid/uuid.dart';
part 'batch_hive_model.g.dart';

// Command to generate: dart run build_runner build -d

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel extends Equatable{
    @HiveField(0)
    final String? batchId;
    @HiveField(1)
    final String batchName;

BatchHiveModel({
  String? batchId,
  required this.batchName,
}) : batchId= batchId ?? const Uuid().v4();

// Initial Const
const BatchHiveModel.initial()
:batchId='',
batchName='';

// From Entity
factory BatchHiveModel.fromEntity(BatchEntity entity){
  return BatchHiveModel(
    batchId: entity.batchId,
    batchName: entity.batchName,
  );
}

// To Entity
BatchEntity toEntity(){
  return BatchEntity(
    batchId: batchId,
    batchName: batchName );
}

// To entity lsit

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}