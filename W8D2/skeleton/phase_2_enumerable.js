arr = [1,2,3,4,5,6,7];

Array.prototype.myEach = function(callback) {
    for (let i = 0; i < this.length; i++) {
        callback(this[i]);
    }
};

// function logElement(ele)  {
//     console.log(ele);
// }

// arr.myEach(logElement);

Array.prototype.myMap = function(callback) {
    let arr =[];

    this.myEach((ele) => {
        arr.push(callback(ele))
    });
    return arr;
}

function doubleEle(ele) {
    return ele * 2;
}

console.log(arr.myMap(doubleEle));