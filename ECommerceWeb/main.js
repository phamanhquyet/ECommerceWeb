let header = document.querySelector('#header');

window.onscroll = () => {
    if(window.scrollY == 0) {
        header.style.boxShadow = 'none';
    }
    else header.style.boxShadow = '0 6px 10px 0 rgba(129, 129, 129, 0.1)';
}

let menuLinks = document.querySelectorAll('#navigation a');
console.log(menuLinks);

menuLinks.forEach((menuLink) => {
    if(window.location.href.indexOf(menuLink.href.split("#")) !== -1) 
        menuLink.classList.add('active');

    console.log(window.location.href);
    console.log(menuLink);
});

let btnAddToCart = document.querySelector('.add-to-cart');

btnAddToCart.onclick = () => {
    alert("Add to cart successfully!");
}