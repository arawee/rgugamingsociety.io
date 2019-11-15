/* @pjs preload="leslie.jpeg","ben.jpg","6.jpg","5.jpeg","4.jpg","3.jpg","2.jpg"; */

int j = 530;
int x = 0;
PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
int xxx = 0;
int yyy = 0;

boolean choicebool = false;
boolean changebool = false;
boolean contacts = false;
int f = 0;

int p = 0;


void setup () {
  img0 = loadImage("leslie.jpeg");
  img1 = loadImage("ben.jpg");
  img2 = loadImage("2.jpg");
  img3 = loadImage("3.jpg");
  img4 = loadImage("4.jpg");
  img5 = loadImage("5.jpeg");
  img6 = loadImage("6.jpg");
  size (350,531);

}
  
void draw () {
  background(200);
  int y = x%7;
    if (y==0) {
      image(img1,-1,-1,351,532);
      image(img0,-21+p,-1,391,532);
    } else if (y==1) {
      image(img2,-21,-1,391,532);
      image(img1,-1+p,-1,351,532);
    } else if (y==2) {
      image(img3,-21,-1,391,532);
      image(img2,-21+p,-1,391,532);
    } else if (y==3) {
      image(img4,-21,-1,391,532);
      image(img3,-21+p,-1,391,532);
    } else if (y==4) {
      image(img5,-1,-1,351,532);
      image(img4,-21+p,-1,391,532);
    } else if (y==5) {
      image(img6,-21,-1,391,532);
      image(img5,-1+p,-1,351,532);
    } else if (y==6) {
      image(img0,-21,-1,391,532);
      image(img6,-21+p,-1,391,532);
    }
    strokeWeight(0);
    fill(120);
    strokeWeight(1);
    for (int i = 255;i>0;i--) {
      stroke(0,0,0,i);
      line(0,j,350,j);
      j--;
    }
    j=530;
    strokeWeight(0);
    fill(255,180,180,120);
    ellipse(42,height/2,53,53);
    strokeWeight(8);
    stroke(0);
    line(30,height/2,47,height/2-15);
    line(30,height/2,47,height/2+15); 
    strokeWeight(0);
    stroke(255,0);
    fill(180,255,180,120);
    ellipse(308,height/2,53,53);
    strokeWeight(8);
    stroke(0);
    line(320,height/2,303,height/2-15);
    line(320,height/2,303,height/2+15);
    fill(255);
    textSize(40);
    if (y==0) {
      textSize(30);
      text("Leslie",40,440);
      textSize(15);
      text("hmu for that bathwater",40,470);
      text("Fortnite/Fortnite couples dancing",40,500);
    } else if (y==1) {
      textSize(30);
      text("Ben",40,440);
      textSize(15);
      text("I have a Mac, so only browser :(",40,470);
      text("Sonic online/Raft wars",40,500);
    } else if (y==2) {
      textSize(30);
      text("Kester",40,440);
      textSize(15);
      text("Zoom Zoom",40,470);
      text("Red Dead/Battlefield",40,500);
    } else if (y==3) {
      textSize(30);
      text("Peter",40,440);
      textSize(15);
      text("I will probs throw you off of a tower",40,470);
      text("any strateg/medival RPG",40,500);
    } else if (y==4) {
      textSize(30);
      text("Shrek Wazowski",40,440);
      textSize(15);
      text("Get out of my closet!",40,470);
      text("LEGO:Shrek/LEGO:Monsters I.N.C.",40,500);
    } else if (y==5) {
      textSize(30);
      text("Joe",40,440);
      textSize(15);
      text("Joe mama",40,470);
      text("Fortnite/Minecraft",40,500);
    } else if (y==6) {
      textSize(30);
      text("Bob",40,440);
      textSize(15);
      text("Always up for a LAN",40,470);
      text("PUBG/COD",40,500);
    }
  if (changebool == true && choicebool == false) {
    if(p >-350 || p<350) {
      p-=60;
      if (p<-349 || p>349) {
        x++;
        p=0;
        changebool = false;
      }
    }
  }
  if (changebool == true && choicebool == true) {
    contacts = true;
    fill(20,20,20);
    rect(0,0,width,height);
    fill(255);
    textSize(20);
    if (y == 0) {
      text("e.girl@waterseller.com",70,height/2);
    } else if (y == 1) {
      text("ben@icloud.com",95,height/2);
    } else if (y == 2) {
      text("kesterito@kkkkester.com",65,height/2);
    } else if (y == 3) {
      text("spoiler@i.die.com",95,height/2);
    } else if (y == 4) {
      text("shrekowski@gmail.com",65,height/2);
    } else if (y == 5) {
      text("joe.mama@gmail.com",75,height/2);
    } else if (y == 6) {
      text("bobthebuilder@gmail.com",55,height/2);
    }
  }
}

void mousePressed () {
  xxx = mouseX;
  yyy = mouseY;
}

void keyReleased () {
  if (keyCode == LEFT) {
    changebool = true;
    choicebool = false;
  }
  if (keyCode == RIGHT) {
    choicebool = true;
    changebool = true;
  }
  if (contacts == true) {
    changebool = false;
    contacts = false;
    x++;
  }
}

void mouseReleased () {
  if ((xxx >18 && xxx<70 && yyy>244 && yyy<297) || xxx-mouseX>0) {
    changebool = true;
    choicebool = false;
  }
  if ((xxx >280 && xxx<332 && yyy>244 && yyy<297) || xxx-mouseX<0) {
    choicebool = true;
    changebool = true;
  }
  if (contacts == true) {
    changebool = false;
    contacts = false;
    x++;
  }
}
