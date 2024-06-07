<?php
// koneksi ke database
$host = '0.tcp.ap.ngrok.io:11387';
$username = 'root';
$password = '';
$database = 'phpdasar';

$conn = mysqli_connect($host, $username, $password, $database);

function query($tableName) {
    global $conn;
    $query = "SELECT * FROM " . $tableName;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}function query1($tableName, $id) {
    global $conn;
    $query = "SELECT * FROM  $tableName WHERE id_resep =  $id";
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function query2($tableName, $id) {
    global $conn;
    $query = "SELECT * FROM $tableName WHERE id_resep = $id";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    return $row; // Return a single row
}


?>