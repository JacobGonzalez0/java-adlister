<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Login" %></title>
    <%@ include file="partials/head.jsp"  %>
</head>
<body>
    
    <div class="container-fluid"> 
    <%@ include file="partials/navbar.jsp" %>

        <% //check if the request is a POST request
        if (request.getMethod().equalsIgnoreCase("post")) { %>
            <h2> New order details! </h2>
            <div class="col">
                <div class="col"> Crust Size: ${crustSize} </div>
                <div class="col"> Sauce: ${sauceType} </div>
                <div class="col"> Sauce Amount: ${sauceAmount} </div>
                <div class="col"> Cheese: ${cheese} </div>
            </div>
                
        <% }  %>

        <!-- Form starts-->
              <form action="pizza-order" method="post">
    
                <div class="tab-content" id="myTabContent">
                    
                    <!--First tab-->
                    <div class="card m-4 tab-pane explode show active" id="size" role="tab" aria-labelledby="size-tab">
                        <div class="card-header bg-primary text-white ">
                            Choose size and crust
                        </div>
                        <div class="card m-3">
                            <div class="card-header">
                            Hand Tossed
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    Thin enough for optimum crispy to crunchy ratio.
                                </li>
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="crustSize" id="crustSize" value="small-tossed" checked>
                                        <label class="form-check-label" for="crustSize">
                                            Small (10")
                                        </label>
                                    </div>  
                                </li>
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="crustSize" id="crustSize" value="medium-tossed" checked>
                                        <label class="form-check-label" for="crustSize">
                                            Medium (12")
                                        </label>
                                    </div>  
                                </li>
                            
                            </ul>
                                                
                        </div>
    
                        <div class="card m-3" >
                            <div class="card-header">
                            Crispy Thin
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    Thin enough for optimum crispy to crunchy ratio.
                                </li>
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="crustSize" id="crustSize" value="medium-thin" checked>
                                        <label class="form-check-label" for="crustSize">
                                            Medium (12")
                                        </label>
                                    </div>  
                                </li>
                                <li class="list-group-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="crustSize" id="crustSize" value="large-thin" checked>
                                        <label class="form-check-label" for="crustSize">
                                            Large (14")
                                        </label>
                                    </div>  
                                </li>     
                            </ul>
                        </div>
    
                        <!-- Switch tab with button, no onClick function-->
                        <div class="card-footer text-right">
                            <button type="button" class="btn btn-primary btnNext" data-toggle="tab" href="#cheese" >Next</button>
                        </div>
                    </div>
    
                    <!--Second tab-->
                    <div class="card m-4 tab-pane fade" id="cheese" role="tabpanel" aria-labelledby="cheese-tab">
                        <div class="card-header bg-primary text-white ">
                            Choose cheese and sauce
                        </div>
                        <div class="card m-3">
                            <div class="card-header">
                            Cheese
                            </div>
                            <ul class="list-group list-group-flush">
                                <div class="form-group m-3">
                                    <label for="cheese">How Much?</label>
                                    <select class="form-control" id="cheese" name="cheese">
                                        <option value="light" >Light</option>
                                        <option value="normal" selected>Normal</option>
                                        <option value="extra" >Extra</option>
                                        <option value="double" >Double</option>
                                    </select>
                                </div>
                            
                            </ul>
                        </div>
    
                        <div class="card m-3" >
                            <div class="card-header">
                            Sauce
                            </div>
                            <ul class="list-group list-group-flush">
                                <div class="form-group m-3">
                                    <label for="sauceType">What type?</label>
                                    <select class="form-control" id="sauceType" name="sauceType">
                                        <option value="tomato" selected>Tomato sauce</option>
                                        <option value="marinara" >Marinara sauce</option>
                                        <option value="bbq" >BBQ Sauce</option>
                                        <option value="alfredo" >Alfredo Sauce</option>
                                    </select>
                                </div>
    
                                <div class="form-group m-3">
                                    <label for="sauceAmount">How Much?</label>
                                    <select class="form-control" id="sauceAmount" name="sauceAmount">
                                        <option value="light" >Light</option>
                                        <option value="normal" selected>Normal</option>
                                        <option value="extra" >Extra</option>
                                    </select>
                                </div>
                            
                            </ul>
    
                            <div class="card-footer text-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary btnNext" data-toggle="tab" href="#size" role="tab" aria-controls="size" aria-selected="true">Back</button>
                                    <button type="button" class="btn btn-primary btnNext" data-toggle="tab" href="#toppings" role="tab" aria-controls="toppings" aria-selected="true">Next</button>
                                </div>
                            </div>
                        </div>
    
                        
                        
                        
    
                    </div>
    
                    <!--Last tab-->
                    <div class="card m-4 tab-pane fade" id="toppings" role="tabpanel" aria-labelledby="toppings-tab">
    
                        <div class="card-header bg-primary text-white">
                            Choose Toppings
                        </div>
    
                        <div class="card m-3">
                            <div class="card-header">
                            Choose Meats
                            </div>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input" type="checkbox" value="beef" id="beef" name="toppings">
                                    <label class="form-check-label" for="beef">
                                        Beef
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="ham" id="ham" name="toppings">
                                    <label class="form-check-label" for="ham">
                                        Ham
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="steak" id="steak" name="toppings">
                                    <label class="form-check-label" for="steak">
                                        Philly Steak
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="bacon" id="bacon" name="toppings">
                                    <label class="form-check-label" for="bacon">
                                        Bacon
                                    </label>
                                </div>
                            </ul>
                        </div>
    
                        <div class="card m-3">
                            <div class="card-header">
                            Choose Non-Meats
                            </div>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="peppers" id="peppers" name="toppings">
                                    <label class="form-check-label" for="peppers">
                                        Green Peppers
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="mushrooms" id="mushrooms" name="toppings">
                                    <label class="form-check-label" for="mushrooms">
                                        Mushrooms
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="onions" id="onions" name="toppings">
                                    <label class="form-check-label" for="onions">
                                        Onions
                                    </label>
                                </div>
                            </ul>
                            <ul class="list-group list-group-flush">
                                <div class="form-group mx-5 my-3">
                                    <input class="form-check-input " type="checkbox" value="jalepeno" id="jalepeno" name="toppings">
                                    <label class="form-check-label" for="jalepeno">
                                        Jalepeno Peppers
                                    </label>
                                </div>
                            </ul>
    
                            <div class="card-footer text-right">
                                <button type="button" class="btn btn-primary btnNext" data-toggle="tab" href="#cheese" role="tab" aria-controls="cheese" aria-selected="true">Back</button>
    
                                <button type="submit" class="btn btn-primary btnNext bg-success"> <i class="fas fa-shopping-cart"></i> Checkout</button>
                                
                            </div>
                    </div>
    
                
    
                </div>
            </form>
    </div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-LtrjvnR4Twt/qOuYxE721u19sVFLVSA4hf/rRt6PrZTmiPltdZcI7q7PXQBYTKyf" crossorigin="anonymous"></script>
</html>
