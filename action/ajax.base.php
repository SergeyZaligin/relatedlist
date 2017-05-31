<?php

require "../db.php";

switch ($_POST['action']){

        

        case "showCountry":

                  $query = "SELECT * FROM tbl_country";

                  $result = mysqli_query($connection, $query);

                  while ($row = mysqli_fetch_assoc($result)) {
                      echo "<option value='". $row['id_country'] ."'>";
                      echo $row['country'];
                      echo "</option>";
                  }
              
                break;

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
                echo '<select size="1" name="city" onchange="javascript:selectNews();">';

                $query = 'SELECT * FROM tbl_city WHERE id_region=' . $_POST['id_region'];
                
                $result = mysqli_query($connection, $query);
                
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='". $row['id_city'] ."'>";
                    echo $row['city'];
                    echo "</option>";
                  }

                echo '</select>';
                break;

                case "showNews":

                  $query = "SELECT * FROM `tbl_news` WHERE country_id = " .$_POST['id_country']. 
                  " AND region_id = ".$_POST['id_region']." AND city_id = " . $_POST['id_city'];

                  $result = mysqli_query($connection, $query);

                  while ($row = mysqli_fetch_assoc($result)) {
                      echo "<article>";
                      echo $row['title'];
                      echo "</article>";
                  }
              
                break;
        
};

print_r($_POST);

?>
