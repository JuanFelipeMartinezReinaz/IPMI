PImage obra;
int cantX=10;
int cantY=10;

void setup() {
  size(800, 400);
  obra=loadImage("F_25.jpg");
}

void draw() {
  //DIBUJO LA IMAGEN DE LA OBRA DEL LADO IZQUIERDO
  background(255);
  image(obra, 0, 0, 400, 400);
  //ciclos FOR anidados
  pushMatrix();
  translate(200, 200);
  //For B
  for (int x=0; x<cantX; x++) {
    //forA
    for (int y=0; y<cantY; y++) {
      if ((x+y)%2==0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(400, y*20, 200, 20);
    }

  }    popMatrix();
}

//Condicionales (if - else).
//Ciclos FOR anidados.
//Eventos (mouse y/o teclado): modificación de variables.
//Algunas funciones matemáticas: dist(), map(), random().
//Reiniciar el programa: volver variables a estado original.
