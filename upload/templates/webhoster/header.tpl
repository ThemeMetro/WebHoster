{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}


<!DOCTYPE html>
<html lang="en" {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}dir="rtl"{/if}>
	
	<head>
		<meta charset="{$charset}" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		{if $templatefile == 'homepage'}
		
		<title>{$LANG.title_homepage}</title>
		<meta name="keywords" content="{$LANG.meta_keywords_homepage}" />
		<meta name="description" content="{$LANG.meta_description_homepage}" />
		
		{else}
		
		<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
		{/if}
		
		{include file="$template/includes/head.tpl"}
		

		{$headoutput}
	</head>
	
	<body class="webhoster {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}rtl{/if} {if $showingLoginPage}login{/if}" {if $skipMainBodyContainer}style="background-color: #ffffff"{/if} data-phone-cc-input="{$phoneNumberInputStyle}">
	{if !$showingLoginPage}
	{$headeroutput}

    <nav class="navbar top-navbar navbar-fixed-top" role="navigation">
		
        <div class="container">
			
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fas fa-bars text-primary"></i>
                </button>
                <a class="navbar-brand" href="{$WEB_ROOT}/index.php">
                    <img src="{$WEB_ROOT}/templates/{$template}/assets/images/logo-dark.png" alt="{$companyname}" class="img-responsive" />
                </a>
            </div>		
            <!-- Top Menu Right-->
			<div class="nav-top">
				<ul class="nav navbar-right">

					<!-- Shopping Cart -->
					<li class="dropdown">
						<a href="{$WEB_ROOT}/cart.php?a=view" class="quick-nav">
							<i class="fas fa-shopping-cart"></i> <span class="badge up badge-success" id="cartItemCount">{$cartitemcount}</span>
						</a>
					</li>
					
					<!-- Login/Account Notifications -->
					{if $loggedin}
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="far fa-bell"></i>  <span class="badge up badge-info">{$clientAlerts|count}</span>
						</a>
						<ul class="dropdown-menu dropdown-scroll dropdown-tasks auto">
							<li class="dropdown-header">
								<i class="fas fa-info-circle"></i> ({$clientAlerts|count}) {$LANG.notifications}
							</li>
							<li id="taskScroll">
								<ul class="list-unstyled">
									{foreach $clientAlerts as $alert}
										<li>
											<a class="text-{$alert->getSeverity()}" href="{$alert->getLink()}">{$alert->getMessage()} {if $alert->getLinkText()} <button href="{$alert->getLink()}" class="btn btn-xs btn-{$alert->getSeverity()}">{$alert->getLinkText()}</button>{/if}</a>
										</li>
									{foreachelse}
										<li>
											<a href="javascript:;">{$LANG.notificationsnone}</a>
										</li>
									{/foreach}
								</ul>
							</li>
						</ul>
					</li>
					{/if}
					
					
					<!-- Language -->
					{if $languagechangeenabled && count($locales) > 1}
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fas fa-language"></i>
						</a>
						<ul class="dropdown-menu dropdown-scroll dropdown-tasks auto auto-width">
							<li class="dropdown-header">
								<i class="fas fa-list"></i> {$LANG.chooselanguage}
							</li>
							<li id="langScroll">
								<ul class="list-unstyled">
									{foreach $locales as $locale}
										<li><a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a></li>
									{/foreach}
								</ul>
							</li>
						</ul>
					</li>
					{/if}
					

					
					{include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
					
					
					<!--Search Box-->
					<li class="dropdown nav-search-icon">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-search"></span>
						</a>
						<ul class="dropdown-menu dropdown-search">
							<li>
								<div class="search-box">
									<form method="post" action="{$WEB_ROOT}/knowledgebase.php?action=search">
										<input type="text" placeholder="{$LANG.knowledgebasesearch} ..." name="search" class="form-control" autocomplete="off" value="{$LANG.kbquestionsearchere}" onfocus="this.value=(this.value=='{$LANG.kbquestionsearchere}') ? '' : this.value;" onblur="this.value=(this.value=='') ? '{$LANG.kbquestionsearchere}' : this.value;" />
									</form>
								</div>
							</li>
						</ul>
					</li>
					<!--Search Box-->
					
					{if $adminMasqueradingAsClient || $adminLoggedIn}
						<li>
							<a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="dropdown-toggle" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
							<i class="fas fa-sign-out-alt text-warning"></i>
						</a>
					</li>
					{/if}
					

				</ul>
			</div>
            <!-- /.Top Menu -->
		</div>
		
		<div class="top-menu collapse navbar-collapse navbar-main-collapse">
			<div class="container">
				<!-- Left Menu-->
				<div class="nav-top">
					<ul class="nav navbar-nav navbar-left">
					
						{include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
						
					</ul>
				</div>
			</div>
        </div>
        <!-- /.container -->
		
		{include file="$template/includes/verifyemail.tpl"}
		
    </nav>


	<div class="page-container"><!-- /page container -->
	
		{if $templatefile eq 'homepage' or $pagetype eq 'webhoster'}{else}
		<div class="mass-head hero-1">
			{if $skipMainBodyContainer}{else}
			<div class="container">
				<div class="hero-inner text-center">
					<h1>
						{$pagetitle}
					</h1>
				</div>
			</div>
			{/if}
		</div>
		{/if}
		
		{if $skipMainBodyContainer}{else}
			{if $templatefile eq 'homepage' or $pagetype eq 'webhoster'}{else}
			<div class="container">
				<div class="block-s3 {if ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren() || $skipMainBodyContainer)}{else}main-container-nosidebar{/if} {if $templatefile == 'clientregister'}main-container-nosidebar{/if}">
				<div class="row">
				{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
					{if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
						<div class="{if $templatefile !== 'clientregister'}col-md-9 {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}pull-md-left{else}pull-md-right{/if}{else}col-md-12{/if}">
							{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
						</div>
					{/if}
					{if $templatefile !== 'clientregister'}
					<div class="col-md-3 {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}pull-md-right{else}pull-md-left{/if} sidebar sidebar-primary">
						{include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
					</div>
					{/if}
				{/if}
				<!-- Container for main page display content -->
				{if $templatefile !== 'clientregister'}
				<div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}pull-md-left{else}pull-md-right{/if}{else}col-xs-12{/if} main-content">
					{if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
						{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
					{/if}
					
				{else}
				<div class="col-xs-12 main-content">
				{/if}
			{/if}
		{/if}
		
{/if}