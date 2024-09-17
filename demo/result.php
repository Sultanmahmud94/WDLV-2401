<?php  
 
   function checkCharacter($char){
       $char = strtolower($char);

       switch($char){
           case 'a':
           case 'e':
           case 'i':
           case 'o':
           case 'u':
                return $char . " is a vowel.";
                break;
           default:
                if (ctype_alpha($char)){
                    return $char . " is a constant.";
                }  else {
                    return $char . " is not a valid alphabetic character.";
                }  
                break; 
       }

   }

    //check if form is submitted
    if($_SERVER["REQUEST_METHOD"]== "POST"){

        $character = $_POST['character'];  

    // check it is a single character
    
        if (strlen($character)=== 1){
            echo checkCharacter($character);
          } else {
              echo "please enter a single character.";  
             }
          }
             else {
                 echo " invalid request method.";
             }
   
?>