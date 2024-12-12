import 'package:flutter/material.dart';
import 'package:flutter_2_5_bloc_1/presentation/screen/detail/cubit/detail_cubit.dart';
import 'package:flutter_2_5_bloc_1/presentation/screen/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final appProvider = [
  BlocProvider<HomeCubit>(
    create: (BuildContext context) => HomeCubit(),
  ),
  BlocProvider<DetailCubit>(
    create: (BuildContext context) => DetailCubit(),
  ),
];
