function delay(callback) {
      setTimeout(function() {
          callback();
      },2000);
}

function f1() {
    let a = 1;
    let b = 2;
    return a+b;

}

function f2(){
    console.log(f1());
}

delay(f2);
