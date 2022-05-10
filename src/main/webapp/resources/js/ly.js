//------------display section-----------------
function ChangeNumber(type, name) {
    var input = document.getElementsByName(name);
    var shoppingCart = document.getElementById('shoppingCart');
    var wrapper = $('.field_wrapper');
    var arrayIdList = Array.prototype.slice.call(document.getElementsByName('productIdArr'));
    var exists = '0';
    if (type == '0') {
        for (let i = 0; i < input.length; i++) {
            if (parseInt(input[i].value) > 0) {
                input[i].value = parseInt(input[i].value) - 1;
                if (parseInt(shoppingCart.innerText) > 0) {
                    shoppingCart.innerText = parseInt(shoppingCart.innerText) - 1;
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
};
function shopingCart() {
    var cartItem = $('.cart_item');
    
    var arrayIdList = Array.prototype.slice.call(document.getElementsByName('productIdArr'));
    for (var j=0; j < arrayIdList.length; j++) {
        console.log(arrayIdList[j].value + '- ' + document.getElementsByName(arrayIdList[j].value)[0].value);
        $(wrapper).append('<div><input type="hidden" name="lstProductId" value="'
                            + arrayIdList[j].value + '"/>'
                            + '<input type="hidden" name="lstQuantity" value="'
                            + document.getElementsByName(arrayIdList[j].value)[0].value + '"/>'
                            +'</div>'
                        );
    }
    console.log('----------------------');
}