function increasingQ(pID,uID){
  
    AjaxHRService.ajaxCartI(pID, uID, OnSuccess);
    function OnSuccess(result) {
       
        $('#' + pID + '').val('' + result + '');
        var price = parseFloat($('#' + pID + 'price').val());
        var oldPrice = price;
       console.log(price);
        price *= result
        $('#' + pID + 'total').text('$ ' + price.toFixed(2) + '');
        console.log(price);
        var stotal = parseFloat($('#subTotal').val());//getting the sTotal
        
        stotal =stotal-(oldPrice * (result - 1));
        stotal += (oldPrice*result);
        console.log("New Stotal: " + stotal);
        $('#subTotal').val(stotal.toFixed(2));
      $('#dSubtotal').text("$ " + stotal.toFixed(2));
        console.log("Update: work");
         
      
      
        
       

    }
    AjaxHRService.ajaxCartT(uID, OnDone);
    function OnDone(result) {
        $("#CartIcon").html('<span class="icon-shopping_cart"></span>[' + result + ']');
    }
   
}
function decreasingQ(pID, uID) {
    
    AjaxHRService.ajaxCartD(pID, uID, OnSuccess);
    function OnSuccess(result) {
        if (result == 0) {
            remove(pID, uID)
        }
        else {

            $('#' + pID + '').val('' + result + '');
            var price = parseFloat($('#' + pID + 'price').val());
            var oldPrice = price;
            console.log(price);
            price *= result
            $('#' + pID + 'total').text('$ ' + price.toFixed(2) + '');
            console.log(price);
            var stotal = parseFloat($('#subTotal').val());//getting the sTotal

            stotal = stotal - (oldPrice * (result + 1));
            stotal += (oldPrice * result);
            console.log("New Stotal: " + stotal);
            $('#subTotal').val(stotal);
            $('#dSubtotal').text("$ " + stotal.toFixed(2));
            console.log("Update: work");
        }
    }
    AjaxHRService.ajaxCartT(uID, OnDone);
    function OnDone(result) {
        $("#CartIcon").html('<span class="icon-shopping_cart"></span>[' + result + ']');
    }
    
}
function addCart(pID, uID) {
    AjaxHRService.ajaxCartA(pID, uID, OnSuccess);
    function OnSuccess(result) {
        if (result) {
            $('.' + pID + 'Added').fadeIn();
            AjaxHRService.ajaxCartT(uID, OnDone);
            function OnDone(result) {
                $("#CartIcon").html('<span class="icon-shopping_cart"></span>[' + result + ']');
            }
            $('.' + pID + 'Added').fadeOut("slow");
        }
        else {
            $('.' + pID + 'NoAdd').fadeIn();
            $('.' + pID + 'NoAdd').fadeOut("Slow");
        }
        
        } 
        }
function remove(pID, uID) {
    AjaxHRService.ajaxRemove(pID, uID, OnS) 
    function OnS(result) {
        if (result) {
         //   $("#" + pID + "row").html("<td></td><td></td><td></td><td><p style='color:red; display:right; font-size:30px'>Item removed from the cart<p/></td>");
            AjaxHRService.ajaxCartT(uID, OnDone);
            function OnDone(result) {
                $("#CartIcon").html('<span class="icon-shopping_cart"></span>[' + result + ']');
                var price = parseFloat($('#' + pID + 'price').val());
                console.log("Price: " + price);
                var Q = parseInt($('#' + pID + '').val());
                console.log("Quantiy: " + Q);
                var T = Q * price;
                console.log("Total to be removed: " + T);
                var stotal = parseFloat($('#subTotal').val());//getting the sTotal
                console.log("Subtotal: "+stotal);
                stotal = stotal - (T);
                
                console.log("New Stotal: " + stotal);
                $('#subTotal').val(stotal);
                $('#dSubtotal').text("$ " + stotal.toFixed(2));
                $("#" + pID + "row").html("<td></td><td></td><td></td><td><p style='color:red; display:right; font-size:20px;'>Item removed from the cart<p/></td>");
                $("#" + pID + "row").fadeOut("slow");
            }
            
        }
        else {
            console.log("Unlucky bro");
        }
    }
}
