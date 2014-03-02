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



  float hairs[][] = {
    {
      width, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), 0, height, // row 0
      width-10, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -10, height, // row 1
      width-20, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -20, height, // row 2
      width-30, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -30, height, // row 3
      width-40, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -40, height, // row 4
      width-50, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -50, height, // row 5
      width-50, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -50, height, // row 6
      width-60, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -60, height, // row 7
      width-70, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -70, height, // row 8
      width-80, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -80, height, // row 9
      width-90, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -90, height, // row 10
      width-100, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -100, height, // row 11
      width-110, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -110, height, // row 12
      width-120, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -120, height, // row 13
      width-130, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -130, height, // row 14
      width-140, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -140, height, // row 15
      width-150, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -150, height, // row 16
      width-160, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -160, height, // row 17
      width-170, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -170, height, // row 18
      width-180, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -180, height, // row 19
      width-190, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -190, height, // row 20
      width-200, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -200, height, // row 21
      width-210, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -210, height, // row 22
      width-220, (height*3/8), width/4, (height*3/8), (width*3/4), (height*6/8), -220, height, // row 23
    }
  };


  for (int i = 0; i < hairs.length; i++) {
    {
      noFill();
      stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
      strokeWeight(1);



      bezier(hairs[i][0], hairs[i][1], hairs[i][2], hairs[i][3], hairs[i][4], hairs[i][5], hairs[i][6], hairs[i][7]);         // row 0
      bezier(hairs[i][8], hairs[i][9], hairs[i][10], hairs[i][11], hairs[i][12], hairs[i][13], hairs[i][14], hairs[i][15]);   // row 1
      bezier(hairs[i][16], hairs[i][17], hairs[i][18], hairs[i][19], hairs[i][20], hairs[i][21], hairs[i][22], hairs[i][23]); // row 2  
      bezier(hairs[i][24], hairs[i][25], hairs[i][26], hairs[i][27], hairs[i][28], hairs[i][29], hairs[i][30], hairs[i][31]); // row 3
      bezier(hairs[i][32], hairs[i][33], hairs[i][34], hairs[i][35], hairs[i][36], hairs[i][37], hairs[i][38], hairs[i][39]); // row 4
      bezier(hairs[i][40], hairs[i][41], hairs[i][42], hairs[i][43], hairs[i][44], hairs[i][45], hairs[i][46], hairs[i][47]); // row 5
      bezier(hairs[i][48], hairs[i][49], hairs[i][50], hairs[i][51], hairs[i][52], hairs[i][53], hairs[i][54], hairs[i][55]); // row 6
      bezier(hairs[i][56], hairs[i][57], hairs[i][58], hairs[i][59], hairs[i][60], hairs[i][61], hairs[i][62], hairs[i][63]); // row 7
      bezier(hairs[i][64], hairs[i][65], hairs[i][66], hairs[i][67], hairs[i][68], hairs[i][69], hairs[i][70], hairs[i][71]); // row 8
      bezier(hairs[i][72], hairs[i][73], hairs[i][74], hairs[i][75], hairs[i][76], hairs[i][77], hairs[i][78], hairs[i][79]); // row 9
      bezier(hairs[i][80], hairs[i][81], hairs[i][82], hairs[i][83], hairs[i][84], hairs[i][85], hairs[i][86], hairs[i][87]); // row 10
      bezier(hairs[i][88], hairs[i][89], hairs[i][90], hairs[i][91], hairs[i][92], hairs[i][93], hairs[i][94], hairs[i][95]); // row 11
      bezier(hairs[i][96], hairs[i][97], hairs[i][98], hairs[i][99], hairs[i][100], hairs[i][101], hairs[i][102], hairs[i][103]);     // row 12
      bezier(hairs[i][104], hairs[i][105], hairs[i][106], hairs[i][107], hairs[i][108], hairs[i][109], hairs[i][110], hairs[i][111]); // row 13
      bezier(hairs[i][112], hairs[i][113], hairs[i][114], hairs[i][115], hairs[i][116], hairs[i][117], hairs[i][118], hairs[i][119]); // row 14
      bezier(hairs[i][120], hairs[i][121], hairs[i][122], hairs[i][123], hairs[i][124], hairs[i][125], hairs[i][126], hairs[i][127]); // row 15
      bezier(hairs[i][128], hairs[i][129], hairs[i][130], hairs[i][131], hairs[i][132], hairs[i][133], hairs[i][134], hairs[i][135]); // row 16
      bezier(hairs[i][136], hairs[i][137], hairs[i][138], hairs[i][139], hairs[i][140], hairs[i][141], hairs[i][142], hairs[i][143]); // row 17
      bezier(hairs[i][144], hairs[i][145], hairs[i][146], hairs[i][147], hairs[i][148], hairs[i][149], hairs[i][150], hairs[i][151]); // row 18
      bezier(hairs[i][152], hairs[i][153], hairs[i][154], hairs[i][155], hairs[i][156], hairs[i][157], hairs[i][158], hairs[i][159]); // row 19
      bezier(hairs[i][160], hairs[i][161], hairs[i][162], hairs[i][163], hairs[i][164], hairs[i][165], hairs[i][166], hairs[i][167]); // row 20
      bezier(hairs[i][168], hairs[i][169], hairs[i][170], hairs[i][171], hairs[i][172], hairs[i][173], hairs[i][174], hairs[i][175]); // row 21
      bezier(hairs[i][176], hairs[i][177], hairs[i][178], hairs[i][179], hairs[i][180], hairs[i][181], hairs[i][182], hairs[i][183]); // row 22
      bezier(hairs[i][184], hairs[i][185], hairs[i][186], hairs[i][187], hairs[i][188], hairs[i][189], hairs[i][190], hairs[i][191]); // row 23

    }
  }


  // create a grid object as a container for our grid variables (columns, rows, gutter size, margin size)

  ModularGrid grid = new ModularGrid(8, 8, 0, 0);

  // we can even implement a function that draws the grid for us
  grid.display();

  //    endRecord();
}

