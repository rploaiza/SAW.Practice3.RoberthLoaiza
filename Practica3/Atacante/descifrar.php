<?php

$key            = 'jf8)*h9oOpl;.Lpa';
$iv             = 'abcd12344321dcba';
$texto          = ' U0upaDz4eTeuvv5eLnAN2J1MgdJ/f6H4qgfRS7GKjtI=';
$texto_cifrado  = base64_decode($texto);
$texto_claro    = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key,$texto_cifrado, MCRYPT_MODE_CBC, $iv);
echo $texto_claro;
?>