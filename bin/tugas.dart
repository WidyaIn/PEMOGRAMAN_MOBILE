//Menyimpan dalam Variabel
int Function(int, int) add = (int a, int b) {
  return a + b;
};

//Menggunakan sebagai Argumen
int performOperation(int x, int y, int Function(int, int) operation) {
  return operation(x, y);
}

//Mengembalikan sebagai Nilai
int Function(int) multiplyBy(int factor) {
  int Function(int) multiplier = (int x) {
    return x * factor;
  };
  return multiplier;
}

//Digunakan dalam Struktur Data
List<int Function(int, int)> operations = [
  (int a, int b) => a + b,
  (int a, int b) => a - b,
];

//soal no 5
//Menyimpan dalam Variabel:
var multiply = (int a, int b) {
  return a * b;
};
