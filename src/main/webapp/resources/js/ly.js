//------------display section-----------------
function ChangeNumber(type, name) {
    // get number of product inside input
    var input = document.getElementsByName(name);
    // get number of item cart order
    var shoppingCart = document.getElementById('shoppingCart');
    // get form product ordered
    var wrapper = $('.field_wrapper');
    // get product ordered
    var arrayIdList = Array.prototype.slice.call(document.getElementsByName('productIdArr'));
    // check product ordered
    var exists = '0';
    // check cart item when minus
    var minusOnece = '0';
    if (type == '0') {
        for (let i = 0; i < input.length; i++) {
            if (parseInt(input[i].value) > 0) {
                input[i].value = parseInt(input[i].value) - 1;
                if (parseInt(shoppingCart.innerText) > 0 && minusOnece == '0') {
                    shoppingCart.innerText = parseInt(shoppingCart.innerText) - 1;
                    minusOnece = '1';
                }
            }
        }
    }
    if (type == '1') {
        for (let i = 0; i < input.length; i++) {
          input[i].value = parseInt(input[i].value) + 1;
          arrayIdList = Array.prototype.slice.call(document.getElementsByName('productIdArr'));
          if (arrayIdList.length == 0) {
              $(wrapper).append('<div><input type="hidden" name="productIdArr" value="'
                      + name +'"/>'
                      +'</div>');
          } else {
              for (var j=0; j < arrayIdList.length; j++) {
                  if(arrayIdList[j].value == name){
                      exists = '1';
                      break;
                  }
              }
              if (exists == '0') {
                  $(wrapper).append('<div><input type="hidden" name="productIdArr" value="'
                          + name +'"/>'
                          +'</div>');
              }
          }
        }
        shoppingCart.innerText = parseInt(shoppingCart.innerText) + 1;
    }
    var shoppingCartFinal = document.getElementById('shoppingCart');
    if (parseInt(shoppingCart.innerText) == 0) {
        document.getElementById('btnCart').setAttribute('disabled', 'disabled');
    } else {
        document.getElementById('btnCart').removeAttribute('disabled');
    }
};
function shopingCart(action) {
    var cartItem = $('.cart_item');
    
    var arrayIdList = Array.prototype.slice.call(document.getElementsByName('productIdArr'));
    for (var j=0; j < arrayIdList.length; j++) {
        console.log(arrayIdList[j].value + '- ' + document.getElementsByName(arrayIdList[j].value)[0].value);
        if (parseInt(document.getElementsByName(arrayIdList[j].value)[0].value) > 0) {
            $(cartItem).append('<div><input type="hidden" name="lstProductId" value="'
                    + arrayIdList[j].value + '"/>'
                    + '<input type="hidden" name="lstQuantity" value="'
                    + document.getElementsByName(arrayIdList[j].value)[0].value + '"/>'
                    +'</div>'
                );
        }
        
    }
    console.log('----------------------');
    // send request 
    var productIdArray = [];
    var quantityArray = [];
    var lstProductId = Array.prototype.slice.call(document.getElementsByName('lstProductId'));
    var lstQuantity = Array.prototype.slice.call(document.getElementsByName('lstQuantity'));
    for (var i = 0; i < lstProductId.length; i++) {
        productIdArray.push(lstProductId[i].value);
        quantityArray.push(lstQuantity[i].value);
    }
    window.location.href = '/shoppingCart?lstProductId=' + productIdArray + '&lstQuantity=' + quantityArray;
}

function ChangeNumberCart(type, id, total) {
    // get number of product inside input
    var input = document.getElementById(id);
    if (!validateNumber(input.value)) {
        alert('Vui lòng nhập ký tự là số và không để trống !')
    } else {
        if (type == '0') {
            if (parseInt(input.value) > 0) {
                input.value = parseInt(input.value) - 1;
            }
        }
        if (type == '1') {
          input.value = parseInt(input.value) + 1;
        }
        var price = document.getElementsByClassName(id)[0].innerText.replaceAll('.', '');
        var toTalPrice = parseInt(input.value) * parseInt(price);
        document.getElementsByClassName(total)[0].innerText = formatPrice(toTalPrice);
        // onChange input
        if (type == '3') {
            document.getElementById(id).addEventListener("input", function(){
                toTalPrice = parseInt(this.value) * parseInt(price);
                document.getElementsByClassName(total)[0].innerText = formatPrice(toTalPrice);
            });
        }
        var cartTotal = document.getElementsByName('cardPrice');
        var orderPrice = 0;
        for (let i = 0; i < cartTotal.length; i++) {
        	orderPrice = parseInt(cartTotal[i].innerText.replaceAll('.', '')) + parseInt(orderPrice);
        }
        
        document.getElementById('orderPrice').innerText = formatPrice(orderPrice);
    }
};

function formatPrice(price){  
	if (price.toString().length == 5) {
        var pr1 = price.toString().substring(0, 2);
        var pr2 = price.toString().substring(2, 5);
        price = pr1 + '.' + pr2;
      } else if (price.toString().length == 6) {
          var pr1 = price.toString().substring(0, 3);
          var pr2 = price.toString().substring(3, 6);
          price = pr1 + '.' + pr2;
      } else if (price.toString().length == 7) {
          var pr1 = price.toString().substring(0, 1);
          var pr2 = price.toString().substring(1, 4);
          var pr3 = price.toString().substring(4, 7);
          price = pr1 + '.' + pr2 + '.' + pr3;
     }
    return price;
}

/**
 * check exists chacrater in Number
 * @param str input
 * @returns true-false
 */
function validateNumber(str){  
    str = str.replace(/\s/g, '');
    var re = /^[0-9]+$/;
    var e = re.test(str);
    return re.test(str);
}

function ajaxPost(action,data) {
    $.ajax({
        type: 'post',
        url: action,
        data: data.serialize(),
        success: function (res) {
            console.log('process sucess');
        },
        error: function() {
            alert('Error while request');
        }
    });
}