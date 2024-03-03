function f1(func,...arr){
     const arr_even = [];
     var i,j=0;
     for(i=0 ; i<arr.length ; i++) {
         if(arr[i]%2==0) {
             // arr_even[j] = arr[i];
             // j++;
             arr_even.push(arr[i]);
         }
         else
          continue
     }
    func(arr_even);
    
} 

function f2(evens){
   console.log(evens);
}

f1(f2,1,2,3,4,5,6,7,8,9,10)

