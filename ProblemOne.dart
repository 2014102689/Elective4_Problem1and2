import 'dart:io';

void main () {
  double price;
  print(" L LEADED \t U UNLEADED \n D DIESEL \t B BIO-DIESEL");
  print("Input: ");
  String gas = stdin.readLineSync(); 
  print(" C CASH \t L LITER");
  print("Input: ");
  String variation = stdin.readLineSync(); 

  var variant = {'L' : '45.75','U':'43.28','D':'37.12','B':'48.03'};
  var valueList = variant.values.toList();
  var keyList = variant.keys.toList();

  // I know this is'nt the proper way of using map
  //but kapoy na, so am gonna fix this next time.

  if (gas == keyList[0]){
     price = valueList[0] as double;
  }else if(gas == keyList[1]){
     price = valueList[1] as double;
  }else if(gas == keyList[2]){
     price = valueList[2] as double;
  }else if(gas == keyList[3]){
     price = valueList[3] as double;
  }
 
  if (variation == 'C'){
    print('Amount:');
    double amount = double.parse(stdin.readLineSync()); 
    var calculateLiters2 = calculateLiters(price,amount);
    print("Liters:" + calculateLiters2.toString());
    double cash=0;
    while (amount>cash){
      print("Input your cash: ");
      cash = double.parse(stdin.readLineSync()); 
      if (amount>cash){
        print("Your cash is less than the amount payable.");
      }
    }
    var calculateChange2 = calculateChange(cash,amount);
        print("Your change: " + calculateChange2.toString());
  }else if(variation == 'L'){
    print('Quantity:');
    double liters = double.parse(stdin.readLineSync()); 
    var calculateCash2 = calculateCash(price,liters);
    print("Amount:" + calculateCash2.toString());
    double cash=0;
    while (calculateCash2>cash){
      print("Input your cash: ");
      cash = double.parse(stdin.readLineSync()); 
      if (calculateCash2>cash){
        print("Your cash is less than the amount payable.");
      }
    }
    var calculateChange2 = calculateChange(cash,calculateCash2);
        print("Your change: " + calculateChange2.toString());
  }
}

double calculateCash(double price,double liters){
  return liters*price;
}

double calculateLiters(double price,double amount){
  return amount/price;
}

double calculateChange(double cash,double payable){
  return cash-payable;
}

  //  --------- N O T E ------------- 
  // If you see this, remember the date! B-day of Lalang!