void setup()
{
  size(500,500);  
  cloud1x=width;
  cloud2x=width-100;
  cloud3x=width-200;
  cloud4x=width-300;
  cloud5x=width-400;
  planex=0;
  bombx=700;
  bomby=700;
  manx=60;
  many=400;
}
float cloud1x;
float cloud2x;
float cloud3x;
float cloud4x;
float cloud5x;
float planex;
float bombx;
float bomby;
float manx;
float many;
void draw()
{
float halfheight = height/2;
float halfwidth = width/2;
// Ground and background
  background(0,255,255);
  stroke(0,255,0);
  strokeWeight(10);
  fill(0,255,0);
  rect(0,halfheight, width,halfheight);  
  // clouds
  stroke(255);
  fill(255);  
  //cloud1 
  ellipse( cloud1x,100,45,25);
  ellipse(cloud1x+20,100,35,15);
  ellipse(cloud1x-20,100,35,15);
   cloud1x--;
    if(cloud1x <=-30)
  {
    cloud1x=530;
  }
  //cloud2
  ellipse(cloud2x,40,45,25);
  ellipse(cloud2x+20,40,35,15);
  ellipse(cloud2x-20,40,35,15);
  cloud2x-=2;
  if(cloud2x <=-30)
  {
    cloud2x=530;
  }
  //cloud3
  ellipse(cloud3x,150,45,25);
  ellipse(cloud3x+20,150,35,15);
  ellipse(cloud3x-20,150,35,15);
  cloud3x-=1.5;
  if(cloud3x <=-30)
  {
    cloud3x=530;
  }
  //cloud4
  ellipse(cloud4x,125,45,25);
  ellipse(cloud4x+20,125,35,15);
  ellipse(cloud4x-20,125,35,15);
  cloud4x-=1.7;
  if(cloud4x <=-30)
  {
    cloud4x=530;
  }
  //cloud5
  ellipse(cloud5x,20,45,25);
  ellipse(cloud5x+20,20,35,15);
  ellipse(cloud5x-20,20,35,15);
  cloud5x-=0.8;
  if(cloud5x <=-30)
  {
    cloud5x=530;
  }
  //plane
  stroke(115);
  fill(115);
  ellipse(planex+200,75,100,20);
  ellipse(planex+210,75,10,70);
  ellipse(planex+150,65,5,20);
  stroke(0);
  fill(0);
  ellipse(planex+170,75,5,5);
  ellipse(planex+190,75,5,5);
  ellipse(planex+210,75,5,5);
  ellipse(planex+230,75,5,5);
  planex+=2;
  if(planex>=550)
  {
    planex=-250;
  }
  //bomb
  strokeWeight(2);
  stroke(0);
  fill(255,0,0);
  ellipse(bombx,bomby,10,10);
  bomby+=8;
  bombx+=1;
  if(bomby>=700)
  {
    bomby=600;
  }
  if (bombx>=700)
  {
    bombx=600;
  }
  // bomb landing
  if(bomby>=400 && bomby<=450 && bombx>=0 && bombx<=100)
  {
    bomby=425;
    bombx=50;
    manx--;
    if(manx<=bombx)
    {
     // manx=60;
      bombx=600;
    }
  }
  if(bomby>=400 && bomby<=450 && bombx>=100 && bombx<=200)
  {
    bomby=440;
    bombx=150;
    manx++;
    if(manx>=bombx)
    {
     // manx=60;
      bombx=600;
    }
  }
  if(bomby>=400 && bomby<=450 && bombx>=200 && bombx<=300)
  {
    bomby=435;
    bombx=250;
    manx++;
    if(manx>=bombx)
    {
     // manx=60;
      bombx=600;
    }
  }
  if(bomby>=400 && bomby<=450 && bombx>=300 && bombx<=400)
  {
    bomby=415;
    bombx=350;
    manx++;
    if(manx>=bombx)
    {
     // manx=60;
      bombx=600;
    }
  }
  if(bomby>=400 && bomby<=450 && bombx>=400 && bombx<=500)
  {
    bomby=405;
    bombx=450;
    manx++;
    if(manx>=bombx)
    {
     // manx=60;
      bombx=600;
    }
  }
  if (bombx>500 && manx>60)
  {
    manx--;
  }  
  //bomb drop button  
  if(keyPressed)
  {
    if (key==' ')
    {
      bomby=75;
      bombx=planex+200;
    }
  }
// man
fill(255,0,255);
ellipse(manx,many,20,20);
line(manx-10,many+15,manx+10,many+15);
rect(manx-5,many+10,10,20);
line(manx-5,many+30,manx-5,many+40);
line(manx+5,many+30,manx+5,many+40);   
}
