document.addEventListener('DOMContentLoaded', function() {
    let endpoint = window.location.origin+'/api/v1/all_categories';

    fetchProducts();

    function fetchProducts() {
        fetch (endpoint)
            .then(function(response){
                return response.json();
            })

            .then(function(response){
                console.log(response);
                response.forEach(function (category) {
                    let categoryTitle = `<div class='container my-4'>
                    <h2>${category.name}</h2>
                    </div>`
                    document.querySelector(".card-product").insertAdjacentHTML('beforeend', categoryTitle);
                    category.products.forEach(function (product) {
                        let list = `<div class='card col-3'>
                                <img src="${product.url_image}" class="card-img-top" alt="...">
                                    <div class='card-body'> 
                                    <h5 class='card-title'>${product.name}</h5>
                                    <p class="card-text">${product.price}$</p>`;
                                    if( product.discount !== 0){
                                        list += `<p class="card-text">${product.discount}% de descuento</p>`
                                    }

                                    list += `<a href='#'class='btn btn-light btn-sm'>Comprar</a>
                                    </div>
                            </div>`
                        document.querySelector(".card-product").insertAdjacentHTML('beforeend', list);
                    })
                })
            })
    }
})