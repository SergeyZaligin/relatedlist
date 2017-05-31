
/*
* Показать страны
*/
function selectCountry()
{
     
  $.ajax({
    type: "POST",
    url: "/action/ajax.base.php",
    data: { action: 'showCountry'},
    cache: false,
    success: function(responce){  
      $('.gr').html(responce);
    }
  });

};

/*
* Показать регионы
*/
function selectRegion()
{

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
        success: function(responce){ 
          $('div[name="selectDataRegion"]').html(responce); 
        }
      });
    };
};

/*
* Показать города
*/
function selectCity()
{
var id_city = $('select[name="city"]').val();
  var id_region = $('select[name="region"]').val();


  $.ajax({
    type: "POST",
    url: "/action/ajax.base.php",
    data: { action: 'showCityForInsert', id_region: id_region, id_city: id_city },
    cache: false,
    success: function(responce){ 
      $('div[name="selectDataCity"]').html(responce); 
    }
  });
};