// bloc/product_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../config/app_config.dart';
import '../../models/product_model.dart';
import 'product_event.dart';
import 'product_state.dart';


class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>((event, emit) async {
      emit(ProductLoading());
      try {
        final snapshot = await FirebaseFirestore.instance
            .collection('${AppConfig.collectionPrefix}_products')
            .get();

        final products = snapshot.docs
            .map((doc) => Product.fromMap(doc.data(), doc.id))
            .toList();

        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
