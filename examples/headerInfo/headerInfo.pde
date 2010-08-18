import csoundo.*;

Csoundo cs;
PFont font;

void setup() {
    size(720, 480);
    background(0);
    noLoop();
    
    font = loadFont("Courier-24.vlw");
    textFont(font);
    
    cs = new Csoundo(this, "data/synth.csd");
    cs.run();
}

void draw() {
    translate(30, height - 150);
    text("Sample rate:   " + cs.sr(), 0, 0);
    text("Control rate:  " + cs.kr(), 0, 30);
    text("Ksmps:         " + cs.ksmps(), 0, 60);
    text("Channels:      " + cs.nchnls(), 0, 90);
    text("0dBfs:         " + cs.get0dBFS(), 0, 120);
}
