let date = 28;
let month = 12;
let year = 2023;

if(year>=1900 && year<=9999){

if(year%400==0 || year%4==0 && year%100!=0) {
  if(month==2 && date<=29){
       console.log("Valid");
  }
  else if(month<=12 && month!=2 && date<=31){
       console.log("Valid");
  }
  else 
    console.log("Invalid");
}
else {
  if(month==2 && date<=28){
       console.log("Valid");
  }
  else if(month<=12 && month!=2 && date<=31){
       console.log("Valid");
  }
  else 
    console.log("Invalid");

}
}
else {
  console.log("Invalid");
}
