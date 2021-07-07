const Asteroid = require("./asteroid.js");
const MovingObject = require("./moving_object.js");
window.MovingObject = MovingObject;


// canvas.width = innerWidth;
// canvas.height = innerHeight;


document.addEventListener('DOMContentLoaded', (event)=> {
    const canvasEle = document.getElementById("game-canvas");
    const context = canvasEle.getContext('2d');
    const mo = new MovingObject({
        pos: [30, 30],
        vel: [-20, 30],
        radius: 10,
        color: "black"
      });
      mo.draw(context) 
      mo.move(context) 
    const a = new Asteroid({pos:[50,50]}); 
    const b = new Asteroid({pos: [10,20]}); 
    a.draw(context);
    b.draw(context);
    
    
});

