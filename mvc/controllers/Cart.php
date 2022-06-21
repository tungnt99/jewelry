<?php

class Cart extends Controller{
    public $error;

    function cart(){
        // check user account
        $url = $this->getUrl();

        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }
     

        $user = $_SESSION['currentUser'];

        //get header's information
        $category = $this->getCategory();
        $brand = $this->getBrand();
        $material = $this->getMaterial();

        //get model
        $cartModel = $this->model('CartModel');

        $order = $cartModel->showPendingOrder($user['id']);

        $this->view('user', [
            'component'=>'cart',
            'title'=>'Cart',
            'url'=>$url,
            'user'=>$user,
            'category'=>$category,
            'brand'=>$brand,
            'material'=>$material,
            'error'=>$this->error,
            'order'=>$order
        ]);
    }

    function addCart($product_id){
        $url = $this->getUrl();

        // check user account
        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }
        $user = $_SESSION['currentUser'];
        $url = $this->getUrl();

        // get model
        $cartModel = $this->model('CartModel');
        $productModel = $this->model('ProductModel');
        $sizeModel = $this->model('SizeModel');

        $product = $productModel->showProductDetail($product_id);
        
        // check cart
        $data = $cartModel->checkCart($user['id']);

        if($data == null || count($data) == 0){
            $order_id = $cartModel->createCart($user['id']);
        }else{
            $order_id = $data['id'];
        }
        if(isset($_POST['size_id'])){
            $size_id = $this->getPost('size_id');
        }else{
            $size_id = 0;
        }
        $size = $sizeModel->showSizeDetail($size_id);
        $quantity = $this->getPost('quantity');

        $checkCartDetail = $cartModel->checkCartDetail($order_id, $product_id, $size['size']);
        if($checkCartDetail != null){
            header("Location: $url/cart");
            die();
        }

        $cartModel->addOrderDetail($order_id, $product_id, $size['size'], $product['price'], $quantity);
        
        header("Location: $url/cart");
    }

    function orderedCart(){
        $url = $this->getUrl();

        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }
        $user = $_SESSION['currentUser'];

        //get header's information
        $category = $this->getCategory();
        $brand = $this->getBrand();
        $material = $this->getMaterial();

        //get model
        $cartModel = $this->model('CartModel');
        
        $order = $cartModel->showPendingOrder($user['id']);

        $this->view('user', [
            'component'=>'cart',
            'title'=>'Cart',
            'url'=>$url,
            'user'=>$user,
            'category'=>$category,
            'brand'=>$brand,
            'material'=>$material,
            'error'=>$this->error,
            'order'=>$order,
        ]);
    }

    function updateQuantity($orderDetail_id){
        $url = $this->getUrl();

        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }

        $user = $_SESSION['currentUser'];

        //get model
        $cartModel = $this->model('CartModel');
        $quantity = $this->getPost('quantity');

        $cartModel->updateQuantity($orderDetail_id, $quantity);

        header("Location: $url/cart");
    }

    function deleteProduct($orderDetail_id){
        $url = $this->getUrl();

        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }

        //get model
        $cartModel = $this->model('CartModel');

        $cartModel->deleteProduct($orderDetail_id);
        header("Location: $url/cart");
    }

    function checkout(){
        $url = $this->getUrl();

        if(!$this->checkUserLogin()){
            header("Location: $url/login");
        }

        $user = $_SESSION['currentUser'];
    
        $category = $this->getCategory();
        $brand = $this->getBrand();
        $material = $this->getMaterial();

        //get model
        $cartModel = $this->model('CartModel');

        $order = $cartModel->showPendingOrder($user['id']);
        $order_id = $cartModel->checkCart($user['id'])['id'];

        if(!empty($_POST)){
            $note = $this->getPost('note');
            $order_date = date_create('now', timezone_open('Asia/Ho_Chi_Minh'))->format('Y-m-d H-i-s');

            $cartModel->updateOrder($order_id, 'Ordered successfully', $note, $order_date);

            header("Location: $url/");
        }

        $this->view('user', [
            'component'=>'checkout',
            'title'=>'Checkout',
            'url'=>$url,
            'user'=>$user,
            'category'=>$category,
            'brand'=>$brand,
            'material'=>$material,
            'order'=>$order
        ]);
    }
}