
host = new ActiveXObject( "BZWhll.WhllObj" );
ResultCode = host.Connect( "A" );

var row1 = 0;
var col1 = 0;
var row2 = 0;
var col2 = 0;
var diff = false;
var i = 0;

if ( ResultCode != 0 ){
   host.MsgBox( "Error connecting to session A!", 48 );
}

while(true){
    while( !diff && i <= 120){
        checkPoints();     
        if( i == 120 && !diff ){ 	
           host.sendKey('<pf8>');
           host.sendKey('<pf7>');
           i = 0;
        }
        i++;
    }    
    i = 0;   
    diff = false;
}


function checkPoints(){
   col1 = host.CursorColumn;
   row1 = host.CursorRow;
   host.wait(5);
   col2 = host.CursorColumn;
   row2 = host.CursorRow;
   if( row1 != row2 || col1 != col2 ){ 	
       diff = true;
   }
}
