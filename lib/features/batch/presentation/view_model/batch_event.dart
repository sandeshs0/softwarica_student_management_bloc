part of 'batch_bloc.dart';

sealed class BatchEvent extends Equatable {
  const BatchEvent();

  @override
  List<Object> get props => [];
}

final class LoadBatches extends BatchEvent {}

final class GetBatches extends BatchEvent {}

final class AddBatch extends BatchEvent {
  final BatchEntity batch;

  const AddBatch(this.batch);

  @override
  List<Object> get props => [batch];
}

final class DeleteBatch extends BatchEvent {
  final int batchId;

  const DeleteBatch(this.batchId);

  @override
  List<Object> get props => [batchId];
}
