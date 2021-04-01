class Order {

  //Declaring variables can var or Strict

  // Public
  var invoiceNumber;
  var referenceId;
  var date;
  //List<String> bookings;

  // Private - use underscore in front of variable name to make Private
  var _id;
  var _code;


  // Typical constructors can be used
  // Order( id, reference, date){
  //   this.id=id;
  //   this.reference=reference;
  //   this.date=date;
  // }

  // This is cleaner look
  // The [] makes the variable OPTIONAL and will return null
  // The {} makes the variable OPTIONAL too:
  //   Instantiate the object this way:
  //   var order1=new Order(1,12345,'AS765K45L', );

  Order(this._id,this.invoiceNumber, this.referenceId, {this.date});
  Order.status(this._id, this.referenceId,[this._code]){
    date=DateTime.now();
  }
  getInfo(){
    // Typical Concatenation:
    // return 'Your order information:'+
    //   '\n------------------------' +
    //   '\n Id: $_id' +  '\n Invoice: $invoiceNumber'+
    //   '\n Reference: $referenceId' +
    //   '\n Date: $date'+
    //   '\n________________________';

    // You can do this too. Using: '''
    print('''Your order information:
------------------------
  Id: $_id
  Invoice: $invoiceNumber
  Reference ID: $referenceId
  Date: $date
  ${_code != null ? 'Code: $_code': ''}
________________________''');
  }
}

void main(){
  var order1=Order(1,12345,'AS765K45L', date: DateTime.now());
  var order2=Order.status(2, 'AS653K98M')
  .._code='Shipped'
  //..bookings=['Booking1','booking2','booking3']
  ..getInfo();

  print(order1.getInfo());
  print(order2.getInfo());
  print('Thank you');
}