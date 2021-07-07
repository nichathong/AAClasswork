const MovingObject = require("./moving_object");
const Util  = require("./util");

function Asteroid(options){
  options.pos = options.pos || [50,10]; 
  options.color = defaults.COLOR;
  options.radius = defaults.RADIUS;
  options.vel = Util.randomVec(3);
  MovingObject.call(this, options)
}
const defaults = {
  COLOR: "gold",
  RADIUS: 20
};

Util.inherits(Asteroid, MovingObject);
module.exports = Asteroid;