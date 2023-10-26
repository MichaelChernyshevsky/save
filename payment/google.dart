// ignore_for_file: unused_field, avoid_print, lines_longer_than_80_chars

export 'src/in_app_purchase_storekit_platform.dart';
export 'src/in_app_purchase_storekit_platform_addition.dart';
export 'src/types/types.dart';

Future<bool> verifyPurchase(PurchaseDetails purchaseDetails) async {
  return true;
}

class GoogleConstants {
  // purchase
  static String get kConsumableId => 'name-folder';
  static String get basicPlan => '1-plan';
  static String get monthlyPlan => '2-plan';
  static String get anuallyPlan => '3-plan';
  static List<String> get kProductIds => <String>[
        kConsumableId,
        basicPlan,
        monthlyPlan,
        anuallyPlan,
      ];
  // ad
  static String get adUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/52243549**'
      : 'ca-app-pub-3940256099942544/17124853**';
}

GooglePlayPurchaseDetails? getOldSubscription(
  ProductDetails productDetails,
  Map<String, PurchaseDetails> purchases,
) {
  GooglePlayPurchaseDetails? oldSubscription;
  if (productDetails.id == GoogleConstants.basicPlan &&
      purchases[GoogleConstants.basicPlan] != null) {
    oldSubscription =
        purchases[GoogleConstants.basicPlan]! as GooglePlayPurchaseDetails;
  } else if (productDetails.id == GoogleConstants.monthlyPlan &&
      purchases[GoogleConstants.monthlyPlan] != null) {
    oldSubscription =
        purchases[GoogleConstants.monthlyPlan]! as GooglePlayPurchaseDetails;
  } else if (productDetails.id == GoogleConstants.anuallyPlan &&
      purchases[GoogleConstants.anuallyPlan] != null) {
    oldSubscription =
        purchases[GoogleConstants.anuallyPlan]! as GooglePlayPurchaseDetails;
  }
  return oldSubscription;
}

class PaymentProvider extends ChangeNotifier {
  PaymentProvider() {
    final purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(
      _listenToPurchaseUpdated,
      onDone: () {
        _subscription.cancel();
      },
      onError: (Object error) {},
    );
    initStoreInfo();
  }

  final bool _kAutoConsume = Platform.isIOS || true;
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<String> _notFoundIds = <String>[];
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];
  List<String> _consumables = <String>[];
  bool _isAvailable = false;
  bool _purchasePending = false;
  bool loading = true;
  String? _queryProductError;

  Future<void> initStoreInfo() async {
    final isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      _isAvailable = isAvailable;
      _products = <ProductDetails>[];
      _purchases = <PurchaseDetails>[];
      _notFoundIds = <String>[];
      _consumables = <String>[];
      _purchasePending = false;
      loading = false;
      return;
    }
    // if (Platform.isIOS) {
    //   final iosPlatformAddition = _inAppPurchase
    //       .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
    //   await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
    // }
    late ProductDetailsResponse productDetailResponse;
    try {
      productDetailResponse = await _inAppPurchase
          .queryProductDetails(GoogleConstants.kProductIds.toSet());
    } catch (e) {
      print(e);
    }

    if (productDetailResponse.error != null) {
      _queryProductError = productDetailResponse.error!.message;
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _purchases = <PurchaseDetails>[];
      _notFoundIds = productDetailResponse.notFoundIDs;
      _consumables = <String>[];
      _purchasePending = false;
      loading = false;
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      _queryProductError = null;
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _purchases = <PurchaseDetails>[];
      _notFoundIds = productDetailResponse.notFoundIDs;
      _consumables = <String>[];
      _purchasePending = false;
      loading = false;
      return;
    }

    final consumables = await ConsumableStore.load();
    _isAvailable = isAvailable;
    _products = productDetailResponse.productDetails;
    _notFoundIds = productDetailResponse.notFoundIDs;
    _consumables = consumables;
    _purchasePending = false;
    loading = false;
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final iosPlatformAddition = _inAppPurchase
          .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    super.dispose();
  }

  // Future<void> consume(String id) async {
  //   await ConsumableStore.consume(id);
  //   final consumables = await ConsumableStore.load();
  //   _consumables = consumables;
  // }

  Future<void> buy(int index) async {
    final purchases = Map<String, PurchaseDetails>.fromEntries(
      _purchases.map(
        (PurchaseDetails purchase) {
          if (purchase.pendingCompletePurchase) {
            _inAppPurchase.completePurchase(purchase);
          }
          return MapEntry<String, PurchaseDetails>(
            purchase.productID,
            purchase,
          );
        },
      ),
    );
    _products.sort((a, b) => a.price.compareTo(b.price));
    late PurchaseParam purchaseParam;

    if (Platform.isAndroid) {
      final oldSubscription = getOldSubscription(_products[index], purchases);
      purchaseParam = GooglePlayPurchaseParam(
        productDetails: _products[index],
        changeSubscriptionParam: (oldSubscription != null)
            ? ChangeSubscriptionParam(
                oldPurchaseDetails: oldSubscription,
                prorationMode: ProrationMode.immediateWithTimeProration,
              )
            : null,
      );
    } else {
      purchaseParam = PurchaseParam(productDetails: _products[index]);
    }

    if (_products[index].id == GoogleConstants.kConsumableId) {
      await _inAppPurchase.buyConsumable(
        purchaseParam: purchaseParam,
        autoConsume: _kAutoConsume,
      );
    } else {
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    }
    await GetIt.I.get<PremiumProvider>().setSubscribe(index: index);
  }

  Future<void> _listenToPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
      // IMPORTANT!! Always verify purchase details before delivering the product.
      if (purchaseDetails.productID == GoogleConstants.kConsumableId) {
        // await ConsumableStore.save(purchaseDetails.purchaseID!);
        // final List<String> consumables = await ConsumableStore.load();
        _purchasePending = false;
        // _consumables = consumables;
      } else {
        _purchases.add(purchaseDetails);
        _purchasePending = false;
      }
    }

    for (final purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        _purchasePending = true;
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          print('error');
          _purchasePending = false;
          // handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          final valid = await verifyPurchase(purchaseDetails);
          if (valid) {
            unawaited(deliverProduct(purchaseDetails));
          } else {
            handleInvalidPurchase(purchaseDetails);
            return;
          }
        }
        if (Platform.isAndroid) {
          if (!_kAutoConsume &&
              purchaseDetails.productID == GoogleConstants.kConsumableId) {
            final androidAddition = _inAppPurchase
                .getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
            await androidAddition.consumePurchase(purchaseDetails);
          }
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> confirmPriceChange(BuildContext context) async {
    if (Platform.isIOS) {
      final iapStoreKitPlatformAddition = _inAppPurchase
          .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iapStoreKitPlatformAddition.showPriceConsentIfNeeded();
    }
  }
}
