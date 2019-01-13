String pi;
int[] digits;
int[] counts = new int[10];
int index = 0;

int repeat1 = 0;
int repeat2 = 0;
int repeat3 = 0;
int repeat4 = 0;
int repeat5 = 0;
int repeat6 = 0;
int repeat7 = 0;
int repeat8 = 0;
int repeat9 = 0;


int circleSize = 800;

void setup(){
  size(820,820);
  pi = loadStrings("pi-1million.txt")[0];
  
  String[] sdigits = pi.split("");
  
  digits = int(sdigits);
  
  background(0);
  stroke(255);
  noFill();
  translate(width/2, height/2);
  ellipse(0,0,circleSize,circleSize);
}

void draw(){
  color digitColor = color(255);
  translate(width/2, height/2);
  
  int digit = digits[index];
  
  switch(digit){
    case 1:
      digitColor = color(255,255,255);
      repeat1++;
      break;
    case 2:
      digitColor = color(255,102,255);
      repeat2++;
      break;
    case 3:
      digitColor = color(178,102,255);
      repeat3++;
      break;
    case 4:
      digitColor = color(102,178,255);
      repeat4++;
      break;
    case 5:
      digitColor = color(51,255,51);
      repeat5++;
      break;
    case 6:
      digitColor = color(255,255,0);
      repeat6++;
      break;
    case 7:
      digitColor = color(255,128,0);
      repeat7++;
      break;
    case 8:
      digitColor = color(153,0,76);
      repeat8++;
      break;
    case 9:
      digitColor = color(76,153,0);
      repeat9++;
      break;
    
    
  }
  
  
  int nextDigit = digits[index+1];
  index++;
  
  float a1 = map(digit, 0,10, 0, TWO_PI);
  float a2 = map(nextDigit, 0, 10, 0, TWO_PI);
  
  float x1 = circleSize/2 * cos(a1);
  float y1 = circleSize/2 * sin(a1);
  
  float x2 = circleSize/2 * cos(a2);
  float y2 = circleSize/2 * sin(a2);
  
  stroke(digitColor);
  strokeWeight(2);
  line(x1,y1, x2, y2);
  
  println(index);
  
}
