
    function MovingObject(options) {
        this.pos = options.pos;
        this.vel = options.vel;
        this.radius = options.radius;
        this.color = options.color;
    }

    MovingObject.prototype.draw = function (context) {
        context.beginPath();
        context.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI, false);
        context.fillStyle = this.color;
        context.fill();

    }

    MovingObject.prototype.move = function (context){
        this.pos = [this.vel[0]+this.pos[0], this.vel[1]+this.pos[1]];
        this.draw(context); 

    }


module.exports = MovingObject;