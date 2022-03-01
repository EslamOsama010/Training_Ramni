class AddToController {
  var names = [
    'Panka Chair',
    'Ramni Chair',
    'Islam Chair',
    'Rami Cup',
    'Mahmoud Cup ',
    'Art Deco Home',
  ];
  var namesNumber = 0;
  var isPressed = false;

  int quantity = 1;

  void plus() {
    quantity++;
  }

  void minus() {
    if (quantity > 0) {
      quantity--;
    }
  }
}
