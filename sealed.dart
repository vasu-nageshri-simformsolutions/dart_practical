sealed class Document {
  void printDetails();
}

class PDF extends Document {
  @override
  void printDetails() {
    print("PDF document");
  }
}

class Word extends Document {
  @override
  void printDetails() {
    print("Word document");
  }
}

void main() {
  Document doc1 = PDF();
  doc1.printDetails();  // Output: PDF document

  Document doc2 = Word();
  doc2.printDetails();  // Output: Word document
}
