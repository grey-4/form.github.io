function f1() {
    return new Promise((resolve,reject) => {
        let a = 2;
        let b = 3;
        if ((a+b)%2==0){
             resolve("Success");
        }
        else {
            reject("error bro!");
        }
    })
}

f1()
   .then(ans => {
       console.log(ans);
   })
   .catch(error => {
       console.error(error);
   })
