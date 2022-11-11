const apakahPrima = (angka) => {
  let pembagi = 0;
  for(let i=1; i <= angka; i++){
    if(angka%i == 0){
      pembagi++
    }
  }
  if(pembagi == 2){
    console.log(angka,": prima")
  }else{
    console.log(angka,": bukan prima")
  }
}

apakahPrima(13);
apakahPrima(55);
apakahPrima(19);
