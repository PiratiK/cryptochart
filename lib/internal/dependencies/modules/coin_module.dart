import '../../../domain/store/coin/coin_store.dart';
import '../repository_module.dart';

class CoinModule {
  static CoinStore coinStore() {
    return CoinStore(
      RepositoryModule.historyRepository(),
      RepositoryModule.socketRepository(),
    );
  }
}
