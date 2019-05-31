# Solar System Model

## Instructions
  This is a simulation of the solar system, with all the planets and Pluto, as well as the major moons of the planets. The timer system works to represent one year for every 8 seconds, and the planets' orbital period in terms of seconds in the simulation is proportional their orbital period in reality.

  To start the movement of the solar system, press the SPACE bar. To stop the movement, press the SPACE bar again.

## Development Log
<table>
  <th>Log Date</th>
  <th>Description</th>
  <tr>
    <td>5/16/19</td>
    <td>Today we set up the repository for this project and wrote the abstract Celesties class that the Sun, planets, and moons will extend.</td>
  </tr>
    <td>5/17/19</td>
    <td>Today, we wrote the Sun class which extends Celesties. The 3D shape of the Sun exists on the screen. We also wrote the outline of the Planet class. </td>
  </tr>
    <td>5/20/19</td>
    <td>Today, Tiffany added Planet objects for all of the planets and Pluto. They line up and orbit the Sun, but they leave behind a trail which is something we have to fix. In addition, Sharon started the Moon class for the moons of the planets, on a separate branch. </td>
  </tr>
    <td>5/21/19</td>
    <td>Today Sharon worked on the Moon class and getting the moons to orbit around the planets. She arranged the moons into proper positions for visualization. Tiffany resolved the issue of the trailing planet paths and successfully managed to display the moons. But, we had trouble making the moons orbit correctly.
  </td>
  </tr>
    <td>5/22/19</td>
    <td>Today Tiffany worked on getting the moons to orbit correctly again. She modified the method with which the objects orbited. We tried using pushMatrix and popMatrix but can't get it to work exactly. Sharon created a branch rotateMoon to experiment with this. She modified the positions of the moons, but the moons still wouldn't orbit when the planets did.
  </td>
  </tr>
    <td>5/23/19</td>
    <td>Today, Sharon managed to get the moons to orbit with the planets. The moons orbit at different speeds in order to stand out against the orbit of the planets and they start at the proper positions. Sharon also created a proper scaling system for the celestial bodies.
  </td>
  </tr>
    <td>5/24/19</td>
    <td>Today, Tiffany tried implementing the correct orbit speeds for the planets, but we had a hard time doing it. Sharon did successfully manage to create a timer system with seconds displayed on the screen. The timer only counts while the solar system is active. We are hoping to make 15 seconds represent 1 year.
  </td>
  </tr>
    <td>5/27/18</td>
    <td>Today, Tiffany fixed the problem of the planets, finally making them orbit at different speeds. We used a factor of 1 Earth year is equal to 8 seconds to make the orbits of the other planets (not Earth) proportional; however, this was impossible for the farthest planets and dwarf planet (from Uranus to Pluto) because they were just too far away, and their orbit periods were too large, so we assigned arbitrarily small periods for those (dwarf) planets. The next step would be to fix all the speeds of the moons.
  </td>
  </tr>
    <td>5/28/19</td>
    <td>Today, Tiffany made all the moons orbit at the correct speeds around the planets. We also managed to make the planets start at the same position. Sharon started to import photos of the planets to implement them, but she had trouble with placing the images in the 3D planes, because they would not appear where we wanted them to. Sharon started importImages but had a hard time getting everything to look realistic with 3D images. 
  </td>
  </tr>
    <td>5/29/19</td>
    <td>Tiffany: tried implementing a reset system, to make all planets and moons go back to their original positions; implemented reset successfully, as well as reset the timer system; changed the "move" button from the mouse click to the space bar; made objects rotate on its own axis.
Sharon: tried implementing a perspective change where you can choose a planet to "shadow" and follow its path; managed to add the actual images of the celestial bodies (except the moons) to the spheres; she experimented with making the planets the center of the world but failed.
  </td>
  </tr>
    <td>5/30/19</td>
    <td>Tiffany: worked on rotating the celestial bodies in the z direction to make the simulation seem more three dimensional. This was successful; she then started to add information to the bodies.
        Sharon: made the moons the the actual moon texture. Tried to zoom in and follow a celestial body again. The zooming in feature does work and the screen moves, however, it just doesn't zoom in on the right spot. 
  </td>
  </tr>
</table>

## Formulas
<table>
  <th>Calculating:</th>
  <th>Descriptions</th>
  <tr>
    <td>Orbit Speed</td>
    <td>Scale Factor (taken from diameter of actual sun : diameter of our sun): 12347.7142857</td>
  </tr>
    <td>1 year</td>
    <td>8 seconds</td>
