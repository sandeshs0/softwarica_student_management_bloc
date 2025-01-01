part of 'batch_bloc.dart';

@immutable
sealed class BatchState extends Equatable {
  const BatchState();

  @override
  List<Object> get props => [];
}

final class BatchInitial extends BatchState {}

final class BatchLoading extends BatchState {}

final class BatchSuccess extends BatchState {}

final class BatchLoaded extends BatchState {
  final List<BatchEntity> lstBatches;

  const BatchLoaded(this.lstBatches);

  @override
  List<Object> get props => [lstBatches];
}

final class BatchError extends BatchState {
  final String message;

  const BatchError(this.message);

  @override
  List<Object> get props => [message];
}
