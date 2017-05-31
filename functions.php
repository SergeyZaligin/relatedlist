<?php

function getCountry()
{

  $query = "SELECT * FROM tbl_country";

  $result = mysqli_query($connection, $query);

  while ($row = mysqli_fetch_assoc($result)) {
    echo "<option value='". $row['id_country'] ."'>";
    echo $row['country'];
    echo "</option>";
  }

}
function getTeam($id)
{
  global $connection;

  $query = "SELECT * FROM team WHERE id_league = " . $id;

  $result = mysqli_query($connection, $query);

  while ($row = mysqli_fetch_assoc($result)) {
    echo "<option value='". $row['id'] ."'>";
    echo $row['title'];
    echo "</option>";
  }
}
