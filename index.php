<?php require_once('db.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Related list</title>
</head>
<body>

<select size="1" name="country" onchange="javascript:selectRegion();" style="float:left;">
  <option value="">Все страны</option>
  <optgroup label="Выберите страну">
    <?php 
      $query = "SELECT * FROM tbl_country";

      $result = mysqli_query($connection, $query);

      while ($row = mysqli_fetch_assoc($result)) {
        echo "<option value='". $row['id_country'] ."'>";
        echo $row['country'];
        echo "</option>";
      }
    ?>
  </optgroup>
</select>

<div name="selectDataRegion" style="float:left;"></div>
<div name="selectDataCity" style="float:left;"></div>

<script>
   function selectRegion(){

        var id_country = $('select[name="country"]').val();

        if(!id_country){

                $('div[name="selectDataRegion"]').html('');
                $('div[name="selectDataCity"]').html('');

        }else{
                $.ajax({
                        type: "POST",
                        url: "/action/ajax.base.php",
                        data: { action: 'showRegionForInsert', id_country: id_country },
                        cache: false,
                        success: function(responce){ $('div[name="selectDataRegion"]').html(responce); }
                });
        };
};

function selectCity(){

        var id_region = $('select[name="region"]').val();

        $.ajax({
                type: "POST",
                url: "/action/ajax.base.php",
                data: { action: 'showCityForInsert', id_region: id_region },
                cache: false,
                success: function(responce){ $('div[name="selectDataCity"]').html(responce); }
        });
};

  </script>
</span>
</body>
</html>
