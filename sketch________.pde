int x=int (random(1,1000));
int y=int (random(1,1000));
int ang;
int l;
int k;
int[] headx= new int[1000];
int[] heady= new int[1000];
int angle=0;
int i;
int mono;
int score1=0;

void setup() {
  size(1000,1000);
travel();}

void draw() {
  background(0,39,134);
  PImage img= loadImage ("(5).png") ;
image(img,l,k,100,100);
fill(80,125,42);
ellipse(x,y,20,20);
line(x-9,y+9,x+1,y+2);

fill(0);
text("Очкии:"+score1,850,30); 
textSize(23);
}

void travel() 
{
  for(int i=6;i>0;i--)
  {
    if (i!=1)
    {
      headx[i]=headx[i-1];
      heady[i]=heady[i-1];
    }
    else
    {
      switch(angle)
      {
        case 0:
        headx[1]+=8;
        break;
        case 90:
        heady[1]-=8;
        break;
        case 180:
        headx[1]-=8;
        break;
        case 270:
        heady[1]+=8;
        break;
      }
    }
  }
  
}
void keyPressed (){
switch(keyCode)
{case 37:
  l=l-15;
  break;
case 40:
  k=k+15;
  break;
case 39:
  l=l+15;
  break;
case 38:
  k=k-15;
  break;
}
if( l==x && k==y) {
  score1= score1 + 1;
} else {score1= score1 + 0; }
}