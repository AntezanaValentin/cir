class Circulo {
  PVector pos;
  PVector vel;
  PVector mouse = new PVector(0, 0);
  PVector d;
  Circulo() {
    pos = new PVector(random(width), 50);
    vel = new PVector(5, 5);
  }
  void mover() {
    pos.add(vel);
  }
  void mostrar() {
    ellipse(pos.x, pos.y, 10, 10);
  }

  void rebote() {
    if (pos.x >= width || pos.x <= 0) {
      //vel.rotate(pos.y / 10);
      pos.sub(vel);
      vel.x *= -1;
    }
    if (pos.y >= height || pos.y <= 0) {
      //vel.rotate(pos.x / 10);
      pos.sub(vel);
      vel.y *= -1;
    }
  }
  void acercar(PVector otro) {
      //mouse = new PVector(mouseX, mouseY);
      //PVector d = enemigo.pos.copy();
      d = pos.copy();
      d.sub(otro);
      d.normalize();
      //d.mult(-1);
      vel = d;
  }
}
