 var map;
      function initMap() {
      	var  cent = {lat: 28.3726, lng: 77.3189};
        map = new google.maps.Map(document.getElementById('map'), {
          center: cent,
          zoom: 7
        }


        );
         var marker = new google.maps.Marker({position: cent, map: map});
      }
