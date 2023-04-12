<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrar imagenes</title>
</head>
<body>
    <center>
        <table border="2">
            <thead>
                <tr>
                    <th>cod_Producto</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Unidad</th>
                    <th>Existencia</th>
                    <th>Costo</th>
                    <th>Descripcion</th>
                    <th>Imagenes</th>
                </tr>
            </thead>
            <tbody>
            <?php
                include("conexion.php");
                $con=conectar();
                $query = "SELECT * FROM producto";
                $resultado= $con ->query($query);
                while($row = $resultado->fetch_assoc()){
            ?>
                <tr>
                    <td><?php echo $row['cod_Producto']; ?></td>
                    <td><?php echo $row['Nombre']; ?></td>
                    <td><?php echo $row['Precio']; ?></td>
                    <td><?php echo $row['Unidad']; ?></td>
                    <td><?php echo $row['Existencia']; ?></td>
                    <td><?php echo $row['Costo']; ?></td>
                    <td><?php echo $row['Descripcion']; ?></td>
                    <td><img height="70px" src="data:image/jpg;base64,<?php echo base64_encode($row['Imagenes']); ?>"/></td>
                </tr>
            <?php
                }
            ?>
            </tbody>
        </table>
    </center>
</body>
</html>