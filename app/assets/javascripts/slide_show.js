$(function() {
  $('.multiple-item').slick({
        arrows: false,
        autoplaySpeed: 1000,
        autoplay: true,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [{
             breakpoint: 768,
                  settings: {
                       slidesToShow: 3,
                       slidesToScroll: 3,
             }
        },{
             breakpoint: 480,
                  settings: {
                       slidesToShow: 2,
                       slidesToScroll: 2,
                  }
             }
        ]
   });
});