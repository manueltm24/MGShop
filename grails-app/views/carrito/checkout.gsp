<g:applyLayout name="main">
    <content tag="body">
        <section class="section white-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-12 text-left">
                                <h2 class="title">Checkout</h2>
                            </div><!-- end col -->
                        </div><!-- end row -->

                        <hr class="spacer-5"><hr class="spacer-20 no-border">

                        <div class="row">
                            <div class="col-sm-12">
                                <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input  type="hidden" name="business" value="waterquality@waterquality.pionot.com">
                                    <input type="hidden" name="currency_code" value="USD">

                                    %{--<input type="hidden" name="cbt" value="Finish up buying process"> --}%%{--  --}%
                                    <input type="hidden" name="rm" value="2"> %{--Indicando que haga un redirect por el metodo POST--}%
                                    <input type="hidden" name="return" value="${g.createLink(controller: 'carrito', action: 'procesarCompra', absolute: true)}">
                                    <input type="hidden" name="cancel_return" value="${g.createLink(controller: 'tienda', action: 'index', absolute: true)}?cancelled=true">
                                    <input type="hidden" name="upload" value="1">

                                    <fieldset>
                                        <legend>Listado de artículos:</legend>


                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>Producto</th>
                                                <th>Cantidad</th>
                                                <th>Total</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                    <g:each in="${usuario.carroDeCompras}" var="p" status="index">

                                            <tr>
                                                <td>${p.producto.title}</td>
                                                <td>${p.cantidad}</td>
                                                <td>${p.cantidad * p.producto.price}</td>
                                            </tr>
                                            <input type="hidden" name="item_name_${index+1}" value="${p.producto.title}" />
                                            <input type="hidden" name="item_number_${index+1}"  value="${p.producto.id}" />
                                            <input type="hidden" name="amount_${index+1}"  value="${p.producto.price}" />
                                            <input type="hidden" name="quantity_${index+1}"  value="${p.cantidad}" />
                                    </g:each>

                                            </tbody>
                                            <tfoot>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            %{--<th>XXX</th>--}%
                                            </tfoot>
                                        </table>
                                    </fieldset>

                                        %{--<fieldset>--}%
                                        %{--<legend>You are about to purchase:</legend>--}%
                                        %{--<g:each in="${usuario.carroDeCompras}" var="p" status="index">--}%
                                            %{--<div class="form-group">--}%
                                                %{--<h3 for="item_${index}"><b>${p.producto.title}</b></h3>--}%
                                                %{--<p> Quantity: <b>${p.cantidad}</b></p>--}%
                                                %{--<p> Total: $${p.cantidad * p.producto.price}</p>--}%
                                                %{--<input type="hidden" name="item_name_${index+1}" value="${p.producto.title}" />--}%
                                                %{--<input type="hidden" name="item_number_${index+1}"  value="${p.producto.id}" />--}%
                                                %{--<input type="hidden" name="amount_${index+1}"  value="${p.producto.price}" />--}%
                                                %{--<input type="hidden" name="quantity_${index+1}"  value="${p.cantidad}" />--}%
                                            %{--</div>--}%
                                        %{--</g:each>--}%
                                    %{--</fieldset>--}%
                                    <fieldset>
                                        <legend>Información:</legend>
                                        <input type="hidden" name="address_override" value="1">
                                        <div class="form-group">
                                            <label for="first_name">Nombre: </label>
                                            <input type="text" class="form-control" required name="first_name" id="first_name" value="${usuario.nombre}" />
                                        </div>
                                        <div class="form-group">
                                            <label for="last_name">Apellido: </label>
                                            <input type="text" class="form-control" required name="last_name" id="last_name" value="${usuario.apellido}" />
                                        </div>
                                        <div class="form-group">
                                            <label for="address1">Dirección: </label>
                                            <input type="text" class="form-control" required name="address1" id="address1" value="${usuario.address}" />
                                        </div>
                                        <div class="form-group">
                                            <label for="city">Ciudad: </label>
                                            <input type="text" class="form-control" required name="city" id="city" value="${usuario.city}" />
                                        </div>
                                        %{--<div class="form-group">--}%
                                            %{--<label for="state">State: </label>--}%
                                            %{--<input type="text" class="form-control" required name="state" id="state" value="${usuario.state}" />--}%
                                        %{--</div>--}%
                                        <div class="form-group">
                                            <label for="zip">Zip: </label>
                                            <input type="text" class="form-control" required   name="zip" id="zip" value="${usuario.zip}" />
                                        </div>
                                        <input type="hidden" name="country" value="DO"/>
                                    </fieldset>


                                    <div class="col-xs``-12">
                                        <input type="image" class="center-block" name="submit"
                                               src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif"
                                               alt="PayPal - The safer, easier way to pay online">
                                    </div>
                                </form>
                            </div><!-- end col -->
                        </div><!-- end row -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>

    </content>
</g:applyLayout>