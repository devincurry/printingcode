//import processing.opengl.*;
import processing.pdf.*;
//import geomerative.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float node1x = random(width/6, width*5/6);
float node1y = random(height/8, height*6/8);
float node2x = random(width/6, width*5/6);
float node2y = random(height/8, height*6/8);
float node3x = random(width/6, width*5/6);
float node3y = random(height/8, height*6/8);
float node4x = random(width/6, width*5/6);
float node4y = random(height/8, height*6/8);
float node5x = random(width/6, width*5/6);
float node5y = random(height/8, height*6/8);
float node6x = random(width/6, width*5/6);
float node6y = random(height/8, height*6/8);
float node7x = random(width/6, width*5/6);
float node7y = random(height/8, height*6/8);
float node8x = random(width/6, width*5/6);
float node8y = random(height/8, height*6/8);
float node9x = random(width/6, width*5/6);
float node9y = random(height/8, height*6/8);
float node10x = random(width/6, width*5/6);
float node10y = random(height/8, height*6/8);

float nodeSizeLow = 10;
float nodeSizeHi = 45;
float nodeW;
float nodeH;

float randomNumber;
float nodeHue;


void setup()
{
  size(550, 800);
  colorMode(HSB, 1, 1, 1);
  //beginRecord(PDF, "thesisDev01.pdf");

  TColor printBlack = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  TColor green = TColor.newHSV(.3, .7, .8);
  TColor gold = TColor.newHSV(.1, .7, .8);
  TColor blue = TColor.newHSV(.6, .7, .8);
  
  TColor randomHue = TColor.newHSV(nodeHue, .7, .8);


  background(white.hue(), white.saturation(), white.brightness());

  strokeWeight(3);
  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  //  fill(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  fill(green.hue(), green.saturation(), green.brightness());
  randomHue();
  

  //randomize node position
  //  ellipseMode(CENTER);
  //node1
  node1x = random(width/6, width*5/6);
  node1y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
  ellipse(node1x, node1y, nodeW, nodeH);

  //node2
  node2x = random(width/6, width*5/6);
  node2y = random(height/8, height*6/8);
  nodeW = random(10, 40);
  nodeH = nodeW;
  fill(gold.hue(), gold.saturation(), gold.brightness());
  ellipse(node2x, node2y, nodeW, nodeH);

  //node3
  node3x = random(width/6, width*5/6);
  node3y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
  fill(blue.hue(), blue.saturation(), blue.brightness());
  ellipse(node3x, node3y, nodeW, nodeH);

  //node4
  node4x = random(width/6, width*5/6);
  node4y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(green.hue(), green.saturation(), green.brightness());

  ellipse(node4x, node4y, nodeW, nodeH);

  //node5
  node5x = random(width/6, width*5/6);
  node5y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(gold.hue(), gold.saturation(), gold.brightness());

  ellipse(node5x, node5y, nodeW, nodeH);

  //node6
  node6x = random(width/6, width*5/6);
  node6y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(blue.hue(), blue.saturation(), blue.brightness());

  ellipse(node6x, node6y, nodeW, nodeH);

  //node7
  node7x = random(width/6, width*5/6);
  node7y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(green.hue(), green.saturation(), green.brightness());

  ellipse(node7x, node7y, nodeW, nodeH);

  //node8
  node8x = random(width/6, width*5/6);
  node8y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(green.hue(), green.saturation(), green.brightness());

  ellipse(node8x, node8y, nodeW, nodeH);

  //node9
  node9x = random(width/6, width*5/6);
  node9y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(blue.hue(), blue.saturation(), blue.brightness());

  ellipse(node9x, node9y, nodeW, nodeH);

  //node10
  node10x = random(width/6, width*5/6);
  node10y = random(height/8, height*6/8);
  nodeW = random(nodeSizeLow, nodeSizeHi);
  nodeH = nodeW;
    fill(blue.hue(), blue.saturation(), blue.brightness());

  ellipse(node10x, node10y, nodeW, nodeH);

  stroke(printBlack.hue(), printBlack.saturation(), printBlack.brightness());
  strokeWeight(3);
  //connects
  line(node1x, node1y, node2x, node2y);
  line(node2x, node2y, node3x, node3y);
  line(node2x, node2y, node4x, node4y);
  line(node3x, node3y, node4x, node4y);
  line(node3x, node3y, node5x, node5y);
  line(node3x, node3y, node6x, node6y);
  line(node4x, node4y, node5x, node5y);
  line(node4x, node4y, node6x, node6y);
  line(node4x, node4y, node7x, node7y);
  line(node4x, node4y, node8x, node8y);
  line(node5x, node5y, node6x, node6y);
  line(node6x, node6y, node7x, node7y);
  line(node6x, node6y, node8x, node8y);
  line(node7x, node7y, node8x, node8y);
  line(node7x, node7y, node9x, node9y);
  line(node7x, node7y, node10x, node10y);
  line(node8x, node8y, node9x, node9y);
  line(node8x, node8y, node10x, node10y);

  //endRecord();
}


void randomHue() {
  randomNumber =  random(1, 3);
//
//  if (randomNumber <2) {
//    fill(green.hue(), green.saturation(), green.brightness());
//    if (randomNumber >= 2 || randomNumber < 3) {
//      fill(gold.hue(), gold.saturation(), gold.brightness());
//      if (randomNumber >= 3) {
//        fill(blue.hue(), blue.saturation(), blue.brightness());
//      }
//    }
//  }
}

