import "dart:io";

void main() {
  //final regexp = RegExp(r'(?: |, |,)');
  final regexp = RegExp(' ');
  print('Input list of number seperated by "Space": ');
  final inputList = stdin.readLineSync();

  final fixedInputList = inputList.split(regexp).map(int.parse).toList();
  int lengthList = fixedInputList.length;

  int counter = 0;
  for (int i = 0; i < lengthList; i++) {
    int firstTerm = 0;
    int secondTerm = 1;
    int thirdTerm = 0;
    while (thirdTerm < fixedInputList[i]) {
      thirdTerm = firstTerm + secondTerm;
      firstTerm = secondTerm;
      secondTerm = thirdTerm;
    }
    if (thirdTerm == fixedInputList[i]) {
      counter++;
    }
  }
  if (counter == lengthList) {
    print("True");
  } else {
    print("False");
  }
}
