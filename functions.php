<?php

// Récupérer le numero d'étape izi
function getNumero()
{
    if (isset ($_POST['etape']))
    {
        $etape = $_POST['etape'];
        return $etape;
    }
}

?>
