part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class counterPlus extends CounterState{}
class counterMinus extends CounterState{}