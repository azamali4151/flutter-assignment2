class Book{
  String ? title;
  String ? author;
  double ? price;

  Book(this.title,this.author,this.price);

  double discountedPrice(double discountPercent){

    double bookPrice = price??0;
    double discountedPrice = bookPrice - bookPrice* discountPercent/100;

    print('Book Name: $title');
    print('Author Name: $author');
    print('Book Price: $price');

    return discountedPrice;
  }
}
void main(){
  final newBook = Book('Agni Bina','Kazi Nazrul Islam',150);
  final newBook1 = Book('Seser Kobita','Rabindra Nath Thakur',150);

 var disPrice =  newBook.discountedPrice(15);
 print('Discounted Price: $disPrice');

  print('\n');

  var disPrice1 =  newBook1.discountedPrice(10);
  print('Discounted Price: $disPrice1');
}