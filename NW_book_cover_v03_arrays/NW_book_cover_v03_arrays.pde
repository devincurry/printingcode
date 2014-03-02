import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float vert1X;
float vert1Y;
float vert2X;
float vert2Y;
float bezVert1X;
float bezVert1Y;
float bezVert2X;
float bezVert2Y;

void setup()
{
  //    beginRecord(PDF, "letterK4.pdf"); 
  colorMode(HSB, 1, 1, 1);
  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor skyBlue = TColor.newHSV(.6, .7, 1);

  size(600, 900);
  background(white.hue(), white.saturation(), white.brightness());
  //    background(skyBlue.hue(), skyBlue.saturation(), skyBlue.brightness());

  smooth();

  // start hair hill curve

  //  strokeWeight(2);
/*
  //  vert1X;
  vert1Y = height*3/8;
  bezVert1X = width/4;
  bezVert1Y = height*3/8;
  bezVert2X = width*3/4;
  bezVert2Y = height*6/8;
  // vert2X;
  vert2Y = height;
*/

  float hairs[] = {
    width, 0, 
    width-10, 10, 
    width-20, 20, 
    width-30, 30, 
    width-40, 40, 
    width-50, 50, 
    width-60, 60, 
    width-70, 70, 
    width-80, 80, 
    width-90, 90
  
};
/*
  float hairs[][] = {
 {
 width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height, //[0-7]
 width-10, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -10, height, //[8-15]
 width-20, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -20, height, //[16-23]
 width-30, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -30, height, //[24-31]
 width-40, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -40, height, //[32-39]
 width-50, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -50, height, //[39-47]
 width-50, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -50, height, //[48-56]
 width-60, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -60, height, //[57-65]
 width-70, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -70, height, //[66-74]
 width-80, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -80, height, //[75-83]
 width-90, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -90, height, //[84-92]
 width-100, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -100, height, //[93-101]
 width-110, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -110, height, //[102-110]
 
 }
 };
 
 */
for (int i = 0; i < hairs.length; i++) {
  //for (int j = 10; j < 200; j+10) {
  // {
  noFill();
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(1);

  //vert1X = width - i;
  //vert2X = j;
  
    //  vert1X;
  vert1Y = height*3/8;
  bezVert1X = width/4;
  bezVert1Y = height*3/8;
  bezVert2X = width*3/4;
  bezVert2Y = height*6/8;
  // vert2X;
  vert2Y = height;

  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  //    bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  //    bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);
  //    bezier(hairs[i], vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, hairs[i], vert2Y);



  //}
  // }
}


/*
    bezier(hairs[i][0], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][6], hairs[i][7]);
 bezier(hairs[i][8], hairs[i][9], hairs[i][10], hairs[i][11], hairs[i][12], hairs[i][13], hairs[i][14], hairs[i][15]);
 bezier(hairs[i][16], hairs[i][17], hairs[i][18], hairs[i][19], hairs[i][20], hairs[i][21], hairs[i][22], hairs[i][23]);
 bezier(hairs[i][24], hairs[i][25], hairs[i][26], hairs[i][27], hairs[i][28], hairs[i][29], hairs[i][30], hairs[i][31]);
 bezier(hairs[i][32], hairs[i][33], hairs[i][34], hairs[i][35], hairs[i][36], hairs[i][37], hairs[i][38], hairs[i][39]);
 bezier(hairs[i][40], hairs[i][41], hairs[i][42], hairs[i][43], hairs[i][44], hairs[i][45], hairs[i][46], hairs[i][47]);
 bezier(hairs[i][48], hairs[i][49], hairs[i][50], hairs[i][51], hairs[i][52], hairs[i][53], hairs[i][54], hairs[i][55]);
 bezier(hairs[i][56], hairs[i][57], hairs[i][58], hairs[i][59], hairs[i][60], hairs[i][61], hairs[i][62], hairs[i][63]);
 bezier(hairs[i][64], hairs[i][65], hairs[i][66], hairs[i][67], hairs[i][68], hairs[i][69], hairs[i][70], hairs[i][71]);
 bezier(hairs[i][72], hairs[i][73], hairs[i][74], hairs[i][75], hairs[i][76], hairs[i][77], hairs[i][78], hairs[i][79]);
 bezier(hairs[i][80], hairs[i][81], hairs[i][82], hairs[i][83], hairs[i][84], hairs[i][85], hairs[i][86], hairs[i][87]);
 
 }
 */


/*
  for (int i = 0; i <= 20; i++) {
 strokeWeight(1);
 //translate(i, 0);
 vert1X = width;
 vert1Y = height*3/7;
 bezVert1X = width/4;
 bezVert1Y = height*3/7;
 bezVert2X = width*3/4;
 bezVert2Y = height*6/7;
 vert2X = 0;
 vert2Y = height;
 bezier(vert1X, vert1Y, bezVert1X, bezVert1Y, bezVert2X, bezVert2Y, vert2X, vert2Y);
 }
 
 }
 */
// create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)

ModularGrid grid = new ModularGrid(8, 8, 0, 0);

// we can even implement a function that draws the grid for us
//grid.display();

//    endRecord();
}
