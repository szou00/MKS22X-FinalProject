# Solar System Model

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
    <td>Today we worked on the Moon class and getting the moons to orbit around the planets. We resolved the issue of the trailing planet paths and successfully managed to display the moons. But, we had trouble making the moons orbit correctly.
  </td>
  </tr>
    <td>5/22/19</td>
    <td>Today we worked on getting the moons to orbit correctly again. We tried using pushMatrix and popMatrix but can't get it to work exactly. We created a branch rotateMoon to experiment with this.
  </td>
  </tr>
    <td>5/23/19</td>
    <td>Today, we managed to get the moons to orbit with the planets. The moons orbit at different speeds in order to stand out against the orbit of the planets. We also created a proper scaling system for the celestial bodies.
  </td>
  </tr>
    <td>5/24/19</td>
    <td>Today, we tried implementing the correct orbit speeds for the planets, but we had a hard time doing it. We did successfully manage to create a timer system with seconds displayed on the screen. The timer only counts while the solar system is active. We are hoping to make 15 seconds represent 1 year.
  </td>
  </tr>
    <td>Today, we fixed the problem of the planets, finally making them orbit at different speeds. We used a factor of 1 Earth year is equal to 8 seconds to make the orbits of the other planets (not Earth) proportional; however, this was impossible for the farthest planets and dwarf planet (from Uranus to Pluto) because they were just too far away, and their orbit periods were too large, so we assigned arbitrarily small periods for those (dwarf) planets. The next step would be to fix all the speeds of the moons.
  </td>
  </tr>
</table>

## Formulas
<table>
  <th>Calculating:</th>
  <th>Descriptions</th>
  <tr>
    <td>Orbit Speed</td>
    <td>Scale Factor (taken from diameter of actual sun : diameter of our sun): 12347.7142857
    1 year : 8 seconds</td>
  </tr>
