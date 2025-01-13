mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class Service {
  void startService() {
    print('Service started.');
  }
}

class NetworkService with Logger {
  void fetchData() {
    log('Fetching data...');
    print('Data fetched.');
  }
}

void main() {
  var service = NetworkService();
  service.fetchData();
}
