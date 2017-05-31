<?php

# include data base
require "../db.php";

switch ($_POST['action']){
                
        case "showRegionForInsert":

                echo '<select size="1" name="region" onchange="javascript:selectCity();">';

                $query = 'SELECT * FROM tbl_region WHERE id_country=' . $_POST['id_country'];

                $result = mysqli_query($connection, $query);

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='". $row['id_region'] ."'>";
                    echo $row['region'];
                    echo "</option>";
                  }
                  
                echo '</select>';
                break;
                
        case "showCityForInsert":
                echo '<select size="1" name="city">';

                $query = 'SELECT * FROM tbl_city WHERE id_region=' . $_POST['id_region'];
                
                $result = mysqli_query($connection, $query);
                
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='". $row['id_city'] ."'>";
                    echo $row['city'];
                    echo "</option>";
                  }

                echo '</select>';
                break;
        
};

?>
