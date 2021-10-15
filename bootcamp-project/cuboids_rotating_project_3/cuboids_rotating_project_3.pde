

void setup() {
  size(1500, 670, P3D);
  noStroke();
}

void draw() {
  defineLights();
  background(#B2F5DA);
  //#6BEABA-neon greenish
  //#F0CECE-light pink
  
  
  for (int x = 0; x <= width; x += 130) { //making cuboids bigger
    for (int y = 0; y <= height; y += 130) {
      pushMatrix();
      translate(x, y);
      rotateY(map(mouseX, 0, width, 0, PI));
      rotateX(map(mouseY, 0, height, 0, PI));
      box(90);
      popMatrix();
    }
  }
}
//[pop matrix //graphics 
void defineLights() {
  // pink colour  point light - right
  pointLight(245,22, 141,   // Color
             200, -150, 0); // Position

  // Blue colour  directional light from - left
  directionalLight(27, 162, 192, // Color
                   1, 0, 0);    // The x-, y-, z-axis direction

  // Mint green colour spotlight from the front
  spotLight(233, 252, 227,  // Color
            0, 40, 200,     // Position
            0, -0.5, -0.5,  // Direction
            PI / 2, 2);     // Angle, concentration
}
//add some music when exposed to direction/types of light
//or when it reacts to music  the cuboids starts to move into a loop alternatively.
