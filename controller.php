<?php
include_once 'auth.php';
include_once 'functions.php';

if (isset ($_POST['etape']))
{
    switch ($_POST['etape']) {
    case 0:
        include_once 'etapes/etape00.php';
        break;
    case 1:
        echo "plop";
        break;
    case 2:
        echo "pouetch";
        break;
    }
}
else
    include_once 'etapes/etape00.php';

?>
