<?php
/* Clase para ejecutar las consultas a la Base de Datos*/
class ejecutarSQL{
    
    private static function conectar(){        
        $conn = mysqli_init();
        mysqli_ssl_set($conn, NULL, NULL, SSL, NULL, NULL);
        mysqli_real_connect($conn, SERVER, USER, PASS, BD, 3306, NULL, MYSQLI_CLIENT_SSL);
        if ($conn->connect_error) {
            die('Error de Conexión (' . $conn->connect_errno . ') ' . $conn->connect_error);
        }
        return $conn;        
    }
    public static function consultar($query){
        if (!$consul = mysqli_query(ejecutarSQL::conectar(), $query)) {
            echo 'Error en la consulta SQL ejecutada';
        }
        return $consul;
    }
    // public static function conectar(){
    //     if (!$conn =  mysqli_real_connect(SERVER, USER, BD, PASS)) {
    //         $conn = mysqli_init();
    //         mysqli_ssl_set($conn, NULL, NULL, "../assets/img/DigiCertGlobalRootCA.crt.pem", NULL, NULL);
    //         mysqli_real_connect($conn, 'srvdreamme.mysql.database.azure.com', 'Administrador', 'Azure.comsrv', 'store', 3306, MYSQLI_CLIENT_SSL);
    //         if (mysqli_connect_errno()) {
    //             die('Failed to connect to MySQL: ' . mysqli_connect_error());
    //         }
    //     }

    //     /* Codificar la información de la base de datos a UTF8*/
    //     mysqli_set_charset($conn, "utf8");
    //     return $conn;
    // }

    // public static function consultar($query){
    //     if (!$consul = mysqli_query(ejecutarSQL::conectar(), $query)) {
    //         echo 'Error en la consulta SQL ejecutada';
    //     }
    //     return $consul;
    // }
}
/* Clase para hacer las consultas Insertar, Eliminar y Actualizar */
class consultasSQL
{
    public static function InsertSQL($tabla, $campos, $valores)
    {
        if (!$consul = ejecutarSQL::consultar("INSERT INTO $tabla ($campos) VALUES($valores)")) {
            die("Ha ocurrido un error al insertar los datos en la tabla");
        }
        return $consul;
    }
    public static function DeleteSQL($tabla, $condicion)
    {
        if (!$consul = ejecutarSQL::consultar("DELETE FROM $tabla WHERE $condicion")) {
            die("Ha ocurrido un error al eliminar los registros en la tabla");
        }
        return $consul;
    }
    public static function UpdateSQL($tabla, $campos, $condicion)
    {
        if (!$consul = ejecutarSQL::consultar("UPDATE $tabla SET $campos WHERE $condicion")) {
            die("Ha ocurrido un error al actualizar los datos en la tabla");
        }
        return $consul;
    }
    public static function clean_string($val)
    {
        $val = trim($val);
        $val = stripslashes($val);
        $val = str_ireplace("<script>", "", $val);
        $val = str_ireplace("</script>", "", $val);
        $val = str_ireplace("<script src", "", $val);
        $val = str_ireplace("<script type=", "", $val);
        $val = str_ireplace("SELECT * FROM", "", $val);
        $val = str_ireplace("DELETE FROM", "", $val);
        $val = str_ireplace("INSERT INTO", "", $val);
        $val = str_ireplace("--", "", $val);
        $val = str_ireplace("^", "", $val);
        $val = str_ireplace("[", "", $val);
        $val = str_ireplace("]", "", $val);
        $val = str_ireplace("==", "", $val);
        $val = str_ireplace(";", "", $val);
        return $val;
    }
}
