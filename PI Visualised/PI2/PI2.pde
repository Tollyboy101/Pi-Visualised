String pi;
int[] digits;
int[] counts = new int[10];
int index = 0;

int repeat0 = 0;
int repeat1 = 0;
int repeat2 = 0;
int repeat3 = 0;
int repeat4 = 0;
int repeat5 = 0;
int repeat6 = 0;
int repeat7 = 0;
int repeat8 = 0;
int repeat9 = 0;

PFont f;


int circleSize = 700;

void setup(){
  f = createFont("Arial", 16, true);
  size(820,820);
  pi = loadStrings("pi-1million.txt")[0];
  
  String[] sdigits = pi.split("");
  
  digits = int(sdigits);
  
  background(0);
  
  pushMatrix();
  translate(width/2, height/2);
  textFont(f, 36);
  fill(255);
  int sectors = 10;
  for (int i = 0; i < sectors; i++){
    float A = TWO_PI/10 * (i+1);
    textAlign(CENTER);
    text(i, circleSize/2 * cos(A), circleSize/2 * sin(A));
    A += TWO_PI;
    
    
  }
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2);
  stroke(255);
  noFill();
  ellipse(0,0,circleSize,circleSize);
  popMatrix();
}

void draw(){
  float randomOffset;
  float x = 0;
  float y = 0;
  
  color digitColor = color(255);
  translate(width/2, height/2);
  
  int digit = digits[index];
  float a1 = map(digit, 0,10, 0, TWO_PI);
 
  switch(digit){
    
    case 0:
      digitColor = color(64,64,64);
      if (repeat0 <= circleSize/2){
        repeat0++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat0 * cos(a1 + randomOffset);
        y = repeat0 * sin(a1 + randomOffset);
      }  
      break;
      
    case 1:
      digitColor = color(255,255,255);
      if (repeat1 <= circleSize/2){
        repeat1++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat1 * cos(a1 + randomOffset);
        y = repeat1 * sin(a1 + randomOffset);
      }
      break;
      
    case 2:
      digitColor = color(255,102,255);
      if (repeat2 <= circleSize/2){
        repeat2++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat2 * cos(a1 + randomOffset);
        y = repeat2 * sin(a1 + randomOffset);
      }
      break;
      
    case 3:
      digitColor = color(178,102,255);
      if (repeat3 <= circleSize/2){
        repeat3++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat3 * cos(a1 + randomOffset);
        y = repeat3 * sin(a1 + randomOffset);
      }
      break;
      
    case 4:
      digitColor = color(102,178,255);
      if (repeat4 <= circleSize/2){
        repeat4++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat4 * cos(a1 + randomOffset);
        y = repeat4 * sin(a1 + randomOffset);
      }
      break;
      
    case 5:
      digitColor = color(51,255,51);
      if (repeat5 <=circleSize/2){
        repeat5++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat5 * cos(a1 + randomOffset);
        y = repeat5 * sin(a1 + randomOffset);
      }
      break;
      
    case 6:
      digitColor = color(255,255,0);
      if (repeat6 <= circleSize/2){
        repeat6++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat6 * cos(a1 + randomOffset);
        y = repeat6 * sin(a1 + randomOffset);
      }
      break;
      
    case 7:
      digitColor = color(255,128,0);
      if (repeat7 <= circleSize/2){
        repeat7++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat7 * cos(a1 + randomOffset);
        y = repeat7 * sin(a1 + randomOffset);
      }
      break;
      
    case 8:
      digitColor = color(153,0,76);
      if (repeat8 <= circleSize/2){
        repeat8++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat8 * cos(a1 + randomOffset);
        y = repeat8 * sin(a1 + randomOffset);
      }
      break;
      
    case 9:
      digitColor = color(76,153,0);
      if (repeat9 <= circleSize/2){
        repeat9++;
        randomOffset = random(0,TWO_PI/10);
        x = repeat9 * cos(a1 + randomOffset);
        y = repeat9 * sin(a1 + randomOffset);
      }
      break;
    
  }
  
  index++;
  
  stroke(digitColor);
  strokeWeight(4);
  point(x,y);
  
  //println(index);
  
}
