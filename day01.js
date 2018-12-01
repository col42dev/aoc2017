'use strict';

let fs = require('fs');

let data = fs.readFileSync('./data/day01.txt', 'utf8');
data = data.toString().split('');

module.exports = {
    parts: [ 
        function() {
            
            let lastNum = 0;
            return [0]
                .concat(data)
                .concat([data[0]])
                .reduce((total, num) => {
                    let subTotal = (lastNum == Number(num)) ? Number(total) + lastNum : Number(total);
                    lastNum = Number(num);
                    return subTotal;
                });

            //1144
        },
        function() {
            let total = 0;

            data.forEach((value, index, arr) => {
                if (value == arr[(index + arr.length/2) % arr.length]) {
                    total+= Number(value);
                }
            });

            return total; //1194

        }]    
}