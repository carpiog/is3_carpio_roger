<h1 class="text-center">MAPA DE ENVIOS DE CARGO EXPRESS</h1>

<!-- Leyenda de colores -->
<div class="row justify-content-center mb-3">
    <div class="col-lg-8">
        <div class="d-flex justify-content-around">
            <div>
                <span class="badge bg-warning text-dark">En Ruta</span>
            </div>
            <div>
                <span class="badge bg-success">Entregado</span>
            </div>
            <div>
                <span class="badge bg-danger text-light">En Bodega</span>
            </div>
        </div>
    </div>
</div>

<!-- Mapa -->
<div class="row justify-content-center">
    <div class="col-lg-8 p-3 border rounded" id="map" style="height: 50vh; min-height: auto;">
        <!-- Aquí se cargará el mapa -->
    </div>
</div>

<script src="<?= asset('./build/js/mapa/index.js') ?>"></script>
