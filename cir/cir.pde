int cant = 20;

Circulo[] bolsa= new Circulo[cant];

void setup() {
  size(500, 500);
  for (int i = 0; i < cant; i++) {
    bolsa[i] = new Circulo();
  }
}

void draw() {
  background(255);
  bolsa[0].mover();
  bolsa[0].rebote();
  bolsa[0].mostrar();
  for( int i = 1; i < cant; i++) {
    bolsa[i].acercar(bolsa[i-1].pos);
    bolsa[i].mover();
    bolsa[i].rebote();
    bolsa[i].mostrar();
  }
}
