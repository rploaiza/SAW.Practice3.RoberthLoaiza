<?php
include ("includes/abrirbd.php");

if (is_string($_GET['nombre'])&& (preg_match('/^[A-z0-9-_\s]+$/', $_GET['nombre']) === 1)) {
    $val = mysqli_real_escape_string($link, $_GET['nombre']);
    $sql    = "SELECT * FROM productos WHERE nombre ='{$val}'";

    if (!$resultado = mysqli_query($link, $sql)) {
        header("Location:error.html");
        exit;
    }?>
    <html>
    <head> 
        <title> Ver Productos </title>
        <meta charset="UTF-8">
    </head>
    <body>
    <center>
        <?php
        if (mysqli_num_rows($resultado) > 0) {
            echo "<table>";
            while ($prod = mysqli_fetch_assoc($resultado)) {
                echo "<tr><td><img src='Imagenes/{$prod['imagen']}.jpg' width=100 height=200></td>";
                echo "<td> precio={$prod['precio']}<br>talla={$prod['talla']}</td></tr>";
            }
            echo "</table>";
        } else {
            echo ("No existe el producto");
        }

        mysqli_close($link);
        ?>
    </body>
</html>
    
    <?php
}else
echo "Producto Incorrecto.";
?>
