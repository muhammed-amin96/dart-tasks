void main() {
  const TAX = 0.1; //constant tax of 10%
  double totalPriceBeforeTaxes = 0;
  double totalPriceAfterTaxes = 0;
  Map<String, double> groceryItems = {
    "eggs": 100,
    "milk": 50,
    "meat": 380,
    "cheese": 200.5
  };
  for (double price in groceryItems.values) {
    totalPriceBeforeTaxes += price;
  }
  print("Total Price Before Taxes is $totalPriceBeforeTaxes");
  totalPriceAfterTaxes = totalPriceBeforeTaxes * TAX + totalPriceBeforeTaxes;
  print("Total Price After Taxes is $totalPriceAfterTaxes");
}
