---
    title: "Building my own line-following robot won't be so hard, right?"
---

Turns out, building robots it's, indeed, hard.

Hello, my name is Mario, and in my journey to learn about the amazing area that is robotics I decided that to start it would be a good idea to create a line following robot. It is a simple robot, with few sensors and a simple task to accomplish: follow a line. But as I started to plan, research, design and build the robot, it turned out to be more and more complex, because of two things that I didn't took in consideration: my lack of knowledge on electronics and my incredible passion for doing all by myself.

On my head, the process would be easy and smooth, something like this:

- Get the idea of the robot
- Design the robot
- Decide electronics and sensors
- Design the chasis
- 3D print the chasis
- Build it
- Code
- Test and calibrate

But what really happened was something like this:

- Get the general idea of what the robot does
- Read and research how people usually build this robot
- Try to design my own, which implied to decide:
  - Electronic and sensors
  - How to arrange everything
  - How I will fit everything on the chasis
- Bought the required components
- Tested the electronics
- Design the chasis, which took me much more time because I thought that learning CAD won't took me that much time
- Realized that there were parts missing, so had to buy more things and wait for them
- Lost a package with some parts, bought new ones
- Realized that some of the parts where wrong, so had to modify/adapt them
- Use my 3D printer to print the chasis parts
- See my prints fail and spend time fixing the printer
- Actually fit everything
- Code
- Test and calibrate

So, not as smooth and easy as I thought it will be.

Let's go step by step and see in more details what happend, why, how and what I've learnt in this journey.

## Designing the robot

The idea is simple. You put the robot on a line, the robot detects the line and follows the line. The line is built using black tape, and when there are some curves the robot has to turn and keep on the line. The color of the line is black, and the floor of my apartment is similar to wood parquet ????. After reading and investigating, the easiest thing to try was to use some IR sensors to detect if we are or not over the line.

IR sensors emit a laser beam which is reflected on the surface of objects and bounces back to a receiber. The time that has happened since the laser was emited is used to compute the actuall distance. However, black surfaces absorve light, so we don't actually need to measure the distance but if we are receiving a measurement. On the normal floor, the light will bounce back but on the black tape it won't.

We can build an array of sensors to check where the line is, and therefore, move our little boy accordingly. On th ebook xxxx the autor builds it's own sensor from the emitters and receivers, so I thought that it will be ok to follow how he did it. This book was a great source for ideas. The author also uses servo motors to control the robot, and I decided that I would also do it like that.

The controller that I used was an Arduino because:

- Lot's of tutorials and documentation
- Don't need heavy computations
- Already had one

I decided to use a battery holder that I had also as a power source, a servo-hat for controlling the servos and that was almost all for the electronics. Bought the components, bought some screws and waited untill all come while I decided how to fit everything together. The final list of materials that I've used it's at the bottom of the post.

## First problems and testing electronics

The first problem that happened was that the package of IR sensors-emitters that I bought got lost which, given that I bought it on a cheap chinese reteler, was something that could have been expected. 