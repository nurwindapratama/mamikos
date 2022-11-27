var data = [1,2,3,4,5];
let min = 100;
let max = 0;
for(const x of data){
   let jumlah = 0;
   for(const y of data){
   	if(y == x){
	    continue;
	}
	jumlah += y;
   }
   if(jumlah > max){
      max = jumlah;
   }
   if(jumlah < min){
      min = jumlah;
   }
}
console.log('min: ', min);
console.log('max: ', max);

