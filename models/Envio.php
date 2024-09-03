<?php

namespace Model;

class Envio extends ActiveRecord
{
    protected static $tabla = 'envios';
    protected static $idTabla = 'envio_id';
    protected static $columnasDB = ['envio_id', 'fecha_envio', 'usuario_id', 'origen_lat','origen_lng','destino_lat','destino_lng','estado',];

    public $envio_id;
    public $fecha_envio;
    public $usuario_id;
    public $origen_lat;
    public $origen_lng;
    public $destino_lat;
    public $destino_lng;
    public $estado;


    public function __construct($args = [])
    {
        $this->envio_id = $args['envio_id'] ?? null;
        $this->fecha_envio = $args['fecha_envio'] ?? '';
        $this->usuario_id = $args['usuario_id'] ?? null;
        $this->origen_lat = $args['origen_lat'] ?? '';
        $this->origen_lng = $args['origen_lng'] ?? '';
        $this->destino_lat = $args['destino_lat'] ?? '';
        $this->destino_lng = $args['destino_lng'] ?? '';
        $this->estado = $args['estado'] ?? '';
        
    }

    public static function obtenerEnviosconQuery()
    {
        $sql = "SELECT 
                e.fecha_envio, 
                u.nombre AS nombre_usuario, 
                e.origen_lat, 
                e.origen_lng, 
                e.destino_lat, 
                e.destino_lng, 
                e.estado
                FROM 
                envios e
                JOIN 
                usuarios u ON e.usuario_id = u.usuario_id;";
                return self::fetchArray($sql);
    }
}
