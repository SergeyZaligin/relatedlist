<?php require_once('db.php'); ?>
<?php require_once('functions.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script>
    $(document).ready(function () {

      var id = $('.league').val();

      $('.league').change(function () {
        $.ajax({
          type: "POST",
          url: 'index.php',
          data: {id: id},
          success: function (data) {
            $('.command').html(data);
          }
        })
      });
    });
  </script>
  <title>Related list</title>
</head>
<body>
<select class="league" name="league">
  <option value="0">Select league:</option>
<?php
if(isset($_POST['id']) && !empty($_POST['id'])){
  $id = intval($_POST['id']);
}
  getLeague();
?>
</select>
<select class="team" name="team">
  <?php
getTeam($id);
?>
</select>
<span class="command">

</span>
</body>
</html>
