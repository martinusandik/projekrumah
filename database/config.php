<?php
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db = "dbrandom";
    
    $kon = mysqli_connect($host, $user, $pass, $db);
    if (!$kon) {
        die("Koneksi gagal: " . mysqli_connect_error());
    }

    $ids = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    $h_values = array(); // Array to store the values of $h
    
    foreach ($ids as $id) {
        $re = mysqli_query($kon, "SELECT id_random, Date, Number FROM random WHERE id_random = $id");
        $data = mysqli_fetch_array($re);
        
        if ($data['Date'] != date("Y-m-d")) {
            $h = 0;
            while ($h == $data['Number'] || $h == 0) {
                $h = rand(1, 100);
            }
            
            $re = mysqli_query($kon, "UPDATE `random` SET `Date` = '" . date("Y-m-d") . "', `Number` = '" . $h . "' WHERE `id_random` = '" . $id . "'");
        } else {
            $h = $data['Number'];
        }

        $h_values[$id] = $h; // Store the value of $h in the array
    }
    
    // Output the values of $h for each column
    // foreach ($h_values as $id => $h) {
    //     echo "Column $id: $h<br>";
    // }
?>
