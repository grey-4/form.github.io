function f1(op,func){
     func(op);
}

function f2(a) {
    console.log(a);
}

let obj1 = {
    sheep : "meeeeh",
    sheep1 : "meeeeeeeh",
}

f1(obj1,f2);
