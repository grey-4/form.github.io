function multi(...b) {
    var i;
    var a = b[0];
    for( i=0 ; i<b.length ; i++){
        b[i] = a*b[i];
    }
    return b;
}

let ans = multi(2,2,3,4,5);

console.log(ans);
