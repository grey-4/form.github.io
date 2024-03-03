let obj = {
    a: "apple",
    b: "banana",
    c: {
        d:"grapes",
        e:"cherry"
    }
}

let {a,b,...c} = obj;

console.log(a);
console.log(b);
console.log(c);

let {d,...e} = c;

function objec(val1,val2) {
    console.log(val1+" "+val2);
}

objec(a,d);
