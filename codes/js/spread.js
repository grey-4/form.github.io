const obj1 = {
    names : "abc",
    age : "12",
}

const obj2 = {
    add : "1234"
}

const obj3 = {...obj1,...obj2};
const obj4 = {...obj3};

console.log(obj3);
console.log(obj4);
