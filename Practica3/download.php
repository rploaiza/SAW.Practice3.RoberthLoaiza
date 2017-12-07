<?php

if (array_key_exists('type', $_GET) && is_numeric($_GET['type'])) {
        $fichero = "Documentos/";
    
        switch (intval($_GET['type'])) {
            case 1:
                $fileName = $fichero.'pago.pdf';
                break;
            case 2:
                $fileName = $fichero.'envio.pdf';
                break;
        }
    
        if (isset($fileName)) {
            header("Content-Disposition: attachment; filename=" . $fileName);
            header("Content-type: application/pdf");
            readfile($fileName);
        }
    }
    else
    ?>
    <center>
    <p>Error no se conoce referencia</p>
    </center>


