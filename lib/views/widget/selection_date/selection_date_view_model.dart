
import 'package:stacked/stacked.dart';

class SelectionDateViewModel extends BaseViewModel {
  // final navigationService = locator<NavigationService>();

  DateTime? selectedDate;
  final dateTimeNow = DateTime.now();
  final defaultStartDate = DateTime.utc(2000);

  void setSelectedDate(DateTime dateTime) {
    selectedDate = dateTime;
    notifyListeners();
  }

  void setReturnDate({DateTime? initialDate}) {
    dynamic defaultSelectedDate = initialDate ?? defaultStartDate;
  selectedDate ?? defaultSelectedDate ?? '';
  }
}
