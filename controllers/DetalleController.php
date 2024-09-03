<?php

namespace Controllers;

use Exception;
use Model\Envio; 
use MVC\Router; 

class DetalleController {

    public static function estadistica(Router $router){
        $router->render('envio/estadistica');
    }


    public static function detalleEnviosAPI(){
        try {

            $sql = 'SELECT u.nombre, COUNT(e.usuario_id) AS cantidad_envios
                    FROM envios e
                    JOIN usuarios u ON e.usuario_id = u.usuario_id
                    GROUP BY u.nombre
                    ORDER BY cantidad_envios DESC;';

            $datos = Envio::fetchArray($sql);
            
            echo json_encode($datos);
        } catch (Exception $e) {
            echo json_encode([
                'detalle' => $e->getMessage(),
                'mensaje' => 'Ocurrió un error', 
                'codigo' => 0
            ]);
        }
    }
}