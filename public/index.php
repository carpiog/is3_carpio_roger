<?php
require_once __DIR__ . '/../includes/app.php';


use MVC\Router;
use Controllers\AppController;
use Controllers\EnvioController;

$router = new Router();
$router->setBaseURL('/' . $_ENV['APP_NAME']);

$router->get('/', [AppController::class, 'index']);
$router->get('/envio', [EnvioController::class, 'index']);
$router->get('/API/envio/buscar', [EnvioController::class, 'buscarAPI']);

// Comprueba y valida las rutas, que existan y les asigna las funciones del Controlador
$router->comprobarRutas();
