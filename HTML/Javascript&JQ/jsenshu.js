
    for(var star1=1; star1 <= 5; star1++){
        document.write("★");
    }
 
    


   document.write("<br>");



for(var star1=0; star1 <= 1; star1++){
    for(var star2=0; star2 <= 2; star2++){
        document.write("★");
    }
    document.write("<br>");
}



for(var star1=0; star1 <= 1; star1++){
    for(var star2=1; star2 <= 5; star2++){
        document.write("☆");
    }
    document.write("<br>");
}


for(var star1=0; star1 < 4; star1++){
    for(var star2=0; star2 <= 4; star2++){
        document.write("★");
    }
    document.write("<br>");
}


for(var star1 =0; star1 < 4; star1++){
    for(var star2=0; star2 <=2; star2++){
        document.write("★");
    }
    document.write("<br>");
}





for(var no1 =0; no1 < 3; no1++){
    for(var no2=0; no2 <= 2; no2++){
        if(no2%2==0){
            document.write("★");}
        else{
            document.write("☆");}
        }
    document.write("<br>");
    }



for(var no1=0; no1 <5; no1++){
    for(var no2=0; no2 < 5; no2++){
        if(no2%2==0){
            document.write("★");}
        else{
            document.write("☆");}
    }
    document.write("<br>");
}






for(var i = 0; i < 5; i++){
    for(var y =0; y <= i; y++){
        document.write("★");
    }
    document.write("<br>");
}








function area(radius){
    return radius*radius*3.14;
}

document.write(area(5)+"<br>");
document.write(area(7)+"<br>");
document.write(area(10)+"<br>");






function park(adult, child){
    return adult*500 + child*200 + "円です。";
}
document.write(park(2,4)+"<br>");
document.write(park(1,5)+"<br>");
document.write(park(3,7)+"<br>");
               
 
         
               
