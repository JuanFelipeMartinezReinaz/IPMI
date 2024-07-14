//https://youtu.be/i3eJo8SaX1k
//Juan Felipe Martinez Reinaz
//1Legajo 119084/4

PImage obra;
int cantCirculos=6;
int TamEllipses=40;
int cantCuadrantes=4;
int cantY=10;
void setup() {
  size(800, 400);
  obra=loadImage("F_25.jpg");
  ilusionOptica();
}

void draw() {
  //DIBUJO LA IMAGEN DE LA OBRA DEL LADO IZQUIERDO
  background(255);
  image(obra, 0, 0, 400, 400);
  ilusionOptica();
}

void ilusionOptica() {
  color colores;
  pushMatrix();
  translate(400+200, 200);
  //For B
  for (int i=0; i<cantCuadrantes; i++) {
    //ForA
    for (int y=0; y<cantY; y++) {
      if (y%2==0 && colorearLineas() == true) {
        colores = color (random(255), 0, random(255));
        fill(colores);
      } else if (y%2==0 && colorearLineas() == false) {
        fill(255);
      } else {
        fill(0);
      }
      rect(0, y*20, 200, 20);
    }
    rotate(radians(90));
  }
  popMatrix();
  for (int i=cantCirculos; i>0; i--) {
    if ((i+cantCirculos)%2==0) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse (600, 200, TamEllipses*i, TamEllipses*i);
  }
}

boolean colorearLineas() {
  if (mousePressed) {
    return  true;
  } else {
    return false;
  }
}
