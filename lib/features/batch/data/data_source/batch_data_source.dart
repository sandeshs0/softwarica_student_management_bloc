import 'package:dartz/dartz.dart';
import 'package:softwarica_student_management_bloc/core/error/failure.dart';
import 'package:softwarica_student_management_bloc/features/batch/domain/entity/batch_entity.dart';
import 'package:softwarica_student_management_bloc/features/batch/presentation/view_model/batch_bloc.dart';

abstract interface class IBatchRepository{
  Future <List<BatchEntity>>getBatches();
  Future<void>createBatch(BatchEntity batch);
  Future<void>deleteBatch(String id);
}