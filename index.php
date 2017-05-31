<?php require_once('db.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="js/main.js"></script>
  <title>Related list</title>
</head>
<body>

<select size="1" name="country"  onchange="javascript:selectRegion();" style="float:left;">
  <option value="">Все страны</option>
  <optgroup class="gr" label="Выберите страну">
    <script>
      selectCountry();
    </script>
  </optgroup>
</select>

<div name="selectDataRegion" style="float:left;"></div>
<div name="selectDataCity" style="float:left;"></div>

<div class="b-news"></div> <br>

</span>
</body>
</html>
