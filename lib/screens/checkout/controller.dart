class CheckOutController
{
  int quantity = 0;

  void plus(){
    quantity++;
  }
  void minus(){
    if(quantity>0){
      quantity--;
    }
  }
}