let $st1Array
$(function(){


    console.log('hello world');
    

    $st1Array = $('.st1')


    $st1FirstMark = $st1Array[0]
    $st1SecondMark = $st1Array[3] 
    $st1ThirdMark = $st1Array[7] 
    $st1ForthMark = $st1Array[10]
    
    console.log($st1FirstMark, $st1SecondMark, $st1ThirdMark, $st1ForthMark);
    
    ".menu_container_toggle_off"
    $menu_container = $("#menu_container")

    $menu_container.on('click', function(){
        

        if ($menu_container.hasClass('menu_container_toggle_off')) {
            
            $menu_container.removeClass('menu_container_toggle_off')
            $menu_container.addClass('menu_container_toggle_on')

        } else {

            $menu_container.removeClass('menu_container_toggle_on')
            $menu_container.addClass('menu_container_toggle_off')

        }

    });
    
    $tally_new_containers = $('.tally_new_container_small')
    $tally_new_main = $('.tally_new_main')

    $question1 = $tally_new_main[0]
    $question2 = $tally_new_main[1]
    $question3 = $tally_new_main[2]
    $question4 = $tally_new_main[3]

    $('.tally_new_main').on('click', function(){
        

        if ($('.tally_new_main').hasClass('tally_new_container_small')) {
            
            $('.tally_new_main').removeClass('tally_new_container_small')
            $('.tally_new_main').addClass('tally_new_container_large')

        } else {

            $('.tally_new_main').removeClass('tally_new_container_large')
            $('.tally_new_main').addClass('tally_new_container_small')

        }

    });

    /* NOT - WORKING */
    // $question2.on('click', function(){
        

    //     if ($question2.hasClass('tally_new_container_small')) {
            
    //         $question2.removeClass('tally_new_container_small')
    //         $question2.addClass('tally_new_container_large')

    //     } else {

    //         $question2.removeClass('tally_new_container_large')
    //         $question2.addClass('tally_new_container_small')

    //     }

    // });
    // $question3.on('click', function(){
        

    //     if ($question3.hasClass('tally_new_container_small')) {
            
    //         $question3.removeClass('tally_new_container_small')
    //         $question3.addClass('tally_new_container_large')

    //     } else {

    //         $question3.removeClass('tally_new_container_large')
    //         $question3.addClass('tally_new_container_small')

    //     }

    // });
    // $question4.on('click', function(){
        

    //     if ($question4.hasClass('tally_new_container_small')) {
            
    //         $question4.removeClass('tally_new_container_small')
    //         $question4.addClass('tally_new_container_large')

    //     } else {

    //         $question4.removeClass('tally_new_container_large')
    //         $question4.addClass('tally_new_container_small')

    //     }

    // });
    /* NOT - WORKING */


}); // end of DOM ready funct.
     
// SWITCH TO THESE STATS WHEN CLICKED 

//.tally_new_fake_front
// display: auto

//.tally_new_container (lorg)
// overflow: none
// height: 40vh;
// width: 20vw;
// border-radius: 10%;
 
// alt (smol)
// border-radius: 100%;   
// overflow: auto;
// height: 5vw;
// width: 5vw;

