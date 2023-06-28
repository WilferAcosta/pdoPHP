<?php
header("Access-Control-Allow-Origin: *");
require "../vendor/autoload.php";
$dotenv = Dotenv\Dotenv::createImmutable("../")->load();
$router = new \Bramus\Router\Router();

$router->get("/coche", function(){
    $cox = new \App\connect();
    $res = $cox->con->prepare("SELECT * FROM coches");
    $res->execute();
    $res = json_encode($res->fetchAll(\PDO::FETCH_ASSOC));
    echo $res;
});
var_dump($_ENV);
$router->run();
?>