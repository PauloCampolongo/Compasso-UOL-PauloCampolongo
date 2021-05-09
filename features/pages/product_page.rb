module Pages
    class ProductPage < SitePrism::Page
        set_url 'index.php?id_product=1&controller=product&search_query=shirt&results=1'

        element  :cart, '.exclusive'
        element  :continue_shopping, '.exclusive-medium'

        
        def addToCart()
            cart.click
            wait_until_continue_shopping_visible
            continue_shopping.click
        end
    end
end