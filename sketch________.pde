float y = int(random(10, 960));
float x = int(random(10, 960));
int l;
int k;
int i;
int u;
int score1 = 0;
float[] ox;
float[] oy;

void setup() {
    size(1000, 1000);
    ox = new float[1000];
    oy = new float[1000];
    for (int i = 0; i < 100; i++) {
        ox[i] = random(980);
        oy[i] = random(980);
    }
}

void draw() {
    background(252, 221, 118);
    PImage img = loadImage("(5).png");
    image(img, l, k, 100, 100);
    fill(80, 125, 42);
    ellipse(x, y, 20, 20);
    line(x - 9, y + 9, x + 1, y + 2);

    fill(0);
    text("Очкии:" + score1, 850, 30);
    textSize(23);
    if (l + 100 / 2 > (x - 20) & l + 100 / 2 < (x + 20) &
        k + 100 / 2 > (y - 20) & k + 100 / 2 < (y + 20)) {
        score1 = score1 + 1;
        x = ox[i];
        y = oy[i];
        i++;
    } else {
        score1 = score1 + 0;
    }
}

void keyPressed() {
    switch (keyCode) {
        case 37:
            l = l - 15;
            break;
        case 40:
            k = k + 15;
            break;
        case 39:
            l = l + 15;
            break;
        case 38:
            k = k - 15;
            break;
    }

}
