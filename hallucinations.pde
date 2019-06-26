import themidibus.*;

MidiBus myBus; // The MidiBus

void setup() {
 fullScreen(2);

 background(0);
 
 MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
 
 myBus = new MidiBus(this, 0, 1);
}

ArrayList<Note> inNotes = new ArrayList<Note>();

void draw() {
  
  if (inNotes.size() > 0) {
   Note note = inNotes.get(0);
   inNotes.remove(0);

   println(note.pitch);
   
   float r = random(255);
   float g = random(255);
   float b = random(255);
    
   noStroke();
   background(r, g, b);

   float r1 = random(255);
   float g1 = random(255);
   float b1 = random(255);
   fill(r1, g1, b1);
  }

  ellipse(mouseX, mouseY, 80, 80);
  
}

void noteOn(Note note) {
 inNotes.add(note);
}
