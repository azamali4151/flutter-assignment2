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
// Employee Class Start Here
class Employee{

  String ? name;
  double ? salary;
  Employee(this.name,this.salary);
}
class Manager extends Employee{

  String ? department;
  Manager(String name,double salary):super(name,salary);
   completeInformation(String department){
   print('Manager Name: ${name}');
   print('Manager Department: ${department}');
   print('Manager Salary: ${salary}');
  }
}
class Developer  extends Employee{
  Developer(String name,double salary):super(name,salary);
  String ? programmingLanguage;

  completeInformation(String programmingLanguage){
    print('Developer Name: ${name}');
    print('Programming Language: ${programmingLanguage}');
    print('Developer Salary: ${salary}');
  }
}
//Employee Class End Here
void main(){
  print('========= Problem 1 ===========');
  print('\n');
  final newBook = Book('Agni Bina','Kazi Nazrul Islam',150);
  final newBook1 = Book('Seser Kobita','Rabindra Nath Thakur',150);

 var disPrice =  newBook.discountedPrice(15);
 print('Discounted Price: $disPrice');

  print('\n');

  var disPrice1 =  newBook1.discountedPrice(10);
  print('Discounted Price: $disPrice1');
  print('\n');
  print('========= Problem 2 ===========');
  print('\n');
  Manager neEmployee = Manager('Md. Mahbubul Alam',50000);
  neEmployee.completeInformation('It & MIS');
  print('\n');
  Developer neDeveloper = Developer('Md. Azam Ali',150000);
  neDeveloper.completeInformation('Dart');

}