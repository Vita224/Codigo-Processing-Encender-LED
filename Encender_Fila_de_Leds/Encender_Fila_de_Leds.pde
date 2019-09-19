//import de.bezier.data.sql.*;
//import de.bezier.data.sql.mapper.*;

import processing.serial.*; //Libreria que conecta Processing con Arduino

boolean EstadoBoton = false;
Serial MiSerial;
void setup() {
  size (1200, 300);
  String NombrePuerto = Serial.list()[0]; //Puerto en el que se conecta Arduino
  MiSerial = new Serial(this, NombrePuerto, 9600);
}

void draw() {
  background(200);
  fill(150);
  rect(30, height/2-50, 80, 80);
  rect(180, height/2-50, 80, 80);
  rect(330, height/2-50, 80, 80);
  rect(480, height/2-50, 80, 80);
  rect(640, height/2-50, 80, 80);
  rect(790, height/2-50, 80, 80);
  rect(940, height/2-50, 80, 80);
  rect(1090, height/2-50, 80, 80);

  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      fill(255, 0, 0);
      rect(30, height/2-50, 80, 80);
      MiSerial.write('a');
    }
  } else {
    fill(150);
    rect(30, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) { 
    if (key == 's' || key == 'S') {
      fill(#FFF300);
      rect(180, height/2-50, 80, 80);
      MiSerial.write('s');
    }
  } else {
    fill(150);
    rect(180, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      fill(0, 0, 255);
      rect(330, height/2-50, 80, 80);
      MiSerial.write('d');
    }
  } else {
    fill(150);
    rect(330, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      fill(0, 255, 0);
      rect(480, height/2-50, 80, 80);
      MiSerial.write('f');
    }
  } else {
    fill(150);
    rect(480, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'h' || key == 'H') {
      fill(255, 0, 0);
      rect(640, height/2-50, 80, 80);
      MiSerial.write('h');
    }
  } else {
    fill(150);
    rect(640, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'j' || key == 'J') {
      fill(#FFF300);
      rect(790, height/2-50, 80, 80);
      MiSerial.write('j');
    }
  } else {
    fill(150);
    rect(790, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'k' || key == 'K') {
      fill(0, 0, 255);
      rect(940, height/2-50, 80, 80);
      MiSerial.write('k');
    }
  } else {
    fill(150);
    rect(940, height/2-50, 80, 80);
  }
  /////////////////////////////////////////////////////// 
  if (keyPressed) {
    if (key == 'l' || key == 'L') {
      fill(0, 255, 0);
      rect(1090, height/2-50, 80, 80);
      MiSerial.write('l');
    }
  } else {
    fill(150);
    rect(1090, height/2-50, 80, 80);
  }
}
