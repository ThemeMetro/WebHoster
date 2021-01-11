{include file="orderforms/{$carttpl}/common.tpl"}

<div class="row">

    <div class="col-sm-12">

        <div class="text-center">
			<h1>
				{if $productGroup.headline}
					{$productGroup.headline}
				{else}
					{$productGroup.name}
				{/if}
			</h1>
			{if $productGroup.tagline}
				<p>{$productGroup.tagline}</p>
			{/if}
		
			{if $errormessage}
				<div class="alert alert-danger">
					{$errormessage}
				</div>
			{/if}
			
			{if $showSidebarToggle}
				<a data-toggle="modal" data-target="#cat-opt" class="btn btn-warning">
					<i class="fas fa-search-plus"></i> {$LANG.showMenu}
				</a>
			{/if}
		</div>
				
		<hr class="separator" />
				
		<div id="products" style="margin: 60px 0 30px;">		
			<div class="row">
				{foreach $products as $key => $product}
				<div class="col-lg-3 col-sm-6">
					<div class="pricing-table-3 {if $product.isFeatured}inverse position-relative{/if}">
						<h3>{$product.name}</h3>
						<div class="rate">				
							{if $product.bid}{$LANG.bundledeal}{if $product.displayprice} {$product.displayprice}{/if}
							{else}{if $product.pricing.hasconfigoptions}{$LANG.startingfrom}:<br />{/if}
									
									
							{if $product.paytype eq "free"}
								<label class="label label-warning label-xlg arrowed-in-right arrowed-in">{$LANG.orderfree}</label>
									
							{elseif $product.paytype eq "onetime"}
							<div class="price">
								<div class="amount">
									{$product.pricing.onetime}
								</div>
								<br /><label class="label label-success label-xlg arrowed-in-right arrowed-in">{$LANG.orderpaymenttermonetime}</label>
							</div>
									
							{else}
							<div class="price">
								<div class="amount">{$product.pricing.minprice.price}</div>
								<div class="term"><br />{if $product.pricing.minprice.cycle eq "monthly"}{$LANG.orderpaymenttermmonthly}{elseif $product.pricing.minprice.cycle eq "quarterly"}{$LANG.orderpaymenttermquarterly}{elseif $product.pricing.minprice.cycle eq "semiannually"}{$LANG.orderpaymenttermsemiannually}{elseif $product.pricing.minprice.cycle eq "annually"}{$LANG.orderpaymenttermannually}{elseif $product.pricing.minprice.cycle eq "biennially"}{$LANG.orderpaymenttermbiennially}{elseif $product.pricing.minprice.cycle eq "triennially"}{$LANG.orderpaymenttermtriennially}{/if}</div>
							</div>
							{/if}
									
							{/if}<br />
						</div>
								
						{if $product.featuresdesc}<div class="desc">{$product.featuresdesc}</div>{else}{/if}
								
						<ul>			
							{foreach from=$product.features key=feature item=value}
								<li>{$value} {$feature}</li>
							{/foreach}
						</ul>
						{if $product.stockControlEnabled!=""}<small><em>({if $product.stockControlEnabled eq "0"}{$LANG.outofstock}{else}{$product.qty} {$LANG.orderavailable}{/if})</em></small>{/if}<br />
						<a href="{$WEB_ROOT}/cart.php?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}" class="btn btn-lg btn-block btn-primary" id="product{$product@iteration}-order-button">
							{$LANG.ordernowbutton}
						</a>
						
						{if $product.isFeatured}
						<div class="ribbon-wrapper">
							<div class="ribbon bg-danger">Popular</div>
						</div>
						{/if}
					</div>
					
				</div>
				{/foreach}
			</div>
		</div>
		
        {if count($productGroup.features) > 0}
			<div class="cart-features">
				<div class="row clearfix">
					<div class="col-md-12">
						<div class="head-area">
							<span>
								{$LANG.orderForm.includedWithPlans}
							</span>
						</div>
							
						<div class="includes-features">
							<ul class="list-features">
								{foreach $productGroup.features as $features}
									<li>{$features.feature}</li>
								{/foreach}
							</ul>
						</div>
                    </div>
                </div>
            </div>
		{/if}

    </div>
</div>

{include file="orderforms/{$carttpl}/categories-options.tpl"}

<script type="text/javascript">
    function redirectToCartPage()
    {
        var path = jQuery('#gidForm').val();
        if (path) {
            window.location.href = path;
        }
    }
</script>
