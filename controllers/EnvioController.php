<?php

namespace Controllers;

use Exception;
use Model\Envio;
use MVC\Router;

class EnvioController
{
    public static function index(Router $router)
    {
        $envios = Envio::find(2);
        $router->render('envio/index', [
            'envios' => $envios
        ]);
    }

    public static function buscarAPI()
    {
        try {
            $envios = Envio::obtenerEnviosconQuery();
            http_response_code(200);
            echo json_encode([
                'codigo' => 1,
                'mensaje' => 'Datos encontrados',
                'detalle' => '',
                'datos' => $envios
            ]);
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode([
                'codigo' => 0,
                'mensaje' => 'Error al buscar los envios',
                'detalle' => $e->getMessage(),
            ]);
        }
    }
}
