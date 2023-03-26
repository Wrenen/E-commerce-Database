function addToCart(productId) {
    // Check if the cart variable exists in the session
    if (sessionStorage.getItem("cart") === null) {
        // If the cart variable doesn't exist, create an empty array
        var cart = [];
    } else {
        // If the cart variable exists, retrieve its value from the session
        var cart = JSON.parse(sessionStorage.getItem("cart"));
    }
    
    // Check if the product is already in the cart
    var productIndex = cart.findIndex(product => product.id == productId);
    if (productIndex == -1) {
        // If the product isn't in the cart, add it with a quantity of 1
        cart.push({id: productId, quantity: 1});
    } else {
        // If the product is in the cart, increment its quantity by 1
        cart[productIndex].quantity += 1;
    }
    
    // Store the updated cart variable in the session
    sessionStorage.setItem("cart", JSON.stringify(cart));
}
