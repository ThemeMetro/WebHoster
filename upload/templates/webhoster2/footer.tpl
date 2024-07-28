{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}		

{if !$showingLoginPage}
		{if $templatefile eq 'homepage' or $pagetype eq 'webhoster'}{else}

					</div>
					{if !$inShoppingCart && $secondarySidebar->hasChildren()}
						{if $templatefile !== 'clientregister'}
						<div class="col-md-3 {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}pull-md-right{else}pull-md-left{/if} sidebar sidebar-secondary" {if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}style="clear: right;"{/if}>
							{include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
						</div>
						{/if}
					{/if}
					
					<div class="clearfix"></div>
				</div>
	
				
    
			
			
			</div>
		</div>
		{/if}
		
		{if $templatefile == 'homepage'}{else}
		<div class="block-s1 bg-primary">
			<div class="container hidden-xs">
				<div class="pull-left">
					<h3>Considering a hosting solution for your enterprise?</h3>
				</div>
				<div class="pull-right">
					<p><a href="" class="btn btn-inverse"><i class="fas fa-comments"></i>Chat Live with Expert now</a></p>					
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="container visible-xs">
				<div class="text-center">
					<h3>Considering a hosting solution for your enterprise?</h3>
					<p><a href="" class="btn btn-inverse"><i class="fas fa-comments"></i>Chat Live with Expert now</a></p>					
				</div>
			</div>
		</div>
		{/if}
		<div class="block-s3 light">
			<div class="container">
				<div class="space-12"></div>
				<div class="owl-carousel partners-slider">
					<!-- Wrapper for partners slides --> 
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_1.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_2.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_3.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_4.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_5.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_6.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_7.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_8.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<div class="item">
						<img src="{$WEB_ROOT}/templates/{$template}/assets/images/gallery/client_9.png" alt="Owl Image" class="center-block img-responsive">
					</div>
					<!-- /Wrapper for slides -->
				</div>
			</div>
		</div>	
		
		<div class="block-breadcrumbs">
			<div class="container">
				<ol class="breadcrumb">
					<li><i class="fas fa-map-marker text-primary"></i></li>
					<li>{$breadcrumbnav}</li>
				</ol>
			
			</div>
		</div>
		
		<!--Footer-->
		<div class="block-footer">
			<div class="container">
				<div class="row hidden-xs hidden-sm">
					<div class="col-md-2 col-sm-6">
						<h4>Company</h4>
						<ul class="list-unstyled">
							<li><a href="#"><i class="fas fa-angle-right"></i> About Us</a></li>
							<li><a href="#"><i class="fas fa-angle-right"></i> Contact Us</a></li>
							<li><a href="#"><i class="fas fa-angle-right"></i> Partners</a></li>
							<li><a href="#"><i class="fas fa-angle-right"></i> Blog</a></li>
							
						</ul>
					</div>
					<div class="col-md-2 col-sm-6">
						<h4>Help & Support</h4>
						<ul class="list-unstyled">
							<li><a href="#"><i class="fas fa-angle-right"></i> Get Support</a></li>
						</ul>
						
						
						<ul class="list-unstyled">
							<li><a href="#"><i class="fas fa-angle-right"></i> Knowladgebase</a></li>
							<li><a href="#"><i class="fas fa-angle-right"></i> Network Status</a></li>
						</ul>
						
					</div>
					<div class="col-md-6">
						<h4>About Us</h4>
						<div class="well">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting dustry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...<a href="#">Read More..</a></p>
						</div>

						<ul class="list-inline">
							<li><i class="fas fa-phone-volume"></i> (123) 456-7890</li>
							<li><i class="far fa-envelope"></i> Sale.dtp@example.com</li>
						</ul>
						
						<a href="" class="btn btn-success">Live Chat</a>
						
					</div>
					<div class="col-md-2 social">
						<h4>Follow Us</h4>
						<ul class="list-inline">
							<li><a href="#" class="btn btn-circle btn-facebook btn-xs"><i class="fab fa-facebook icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-googleplus btn-xs"><i class="fab fa-google-plus icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-twitter btn-xs"><i class="fab fa-twitter icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-linkedin btn-xs"><i class="fab fa-linkedin icon-only"></i></a></li>
						</ul>
						
					</div>
				</div>


				<div class="row visible-xs visible-sm">
					<div class="col-sm-12 social text-center">
						<ul class="list-inline">
							<li><a href="#" class="btn btn-circle btn-facebook btn-xs"><i class="fab fa-facebook icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-googleplus btn-xs"><i class="fab fa-google-plus icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-twitter btn-xs"><i class="fab fa-twitter icon-only"></i></a></li>
							<li><a href="#" class="btn btn-circle btn-linkedin btn-xs"><i class="fab fa-linkedin icon-only"></i></a></li>
						</ul>
					</div>
				</div>
				
				
				<div class="additional-info hidden-xs hidden-sm">
					<hr class="separator"/>
				
					<div class="row">
						<div class="col-sm-6">
							<ul class="list-inline">
								<li><a href="#"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/awards/award-img1.png"></a></li>
								<li><a href="#"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/awards/award-img2.png"></a></li>
								<li><a href="#"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/awards/award-img3.png"></a></li>
								<li><a href="#"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/awards/award-img4.png"></a></li>
							</ul>
						</div>
						
						<div class="col-sm-6">
							<ul class="list-inline pull-right">
								<li><i class="fab fa-cc-mastercard fa-3x"></i></li>
								<li><i class="fab fa-cc-visa fa-3x"></i></li>
								<li><i class="fab fa-cc-amex fa-3x"></i></li>
								<li><i class="fab fa-cc-discover fa-3x"></i></li>
								<li><i class="fab fa-cc-paypal fa-3x"></i></li>
								<li><i class="fab fa-google-wallet fa-3x"></i></li>
							</ul>
						</div>
					</div>

				</div>


				
				<div class="row copyright">
					<div class="col-md-6 col-xs-12">
						<p>{$LANG.copyright} &copy; {$date_year} {$companyname}. <span class="hidden-xs">{$LANG.allrightsreserved}.</span></p>
					</div>
					<div class="col-md-6 col-xs-12">
						<ul class="list-inline">
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">SLA Agreement</a></li>
						</ul>						
					</div>
				</div>
				
				<!-- //Can Remove Back link Section -->
				<!-- We would requet you to keep this link. You can use your unique affiliate link to earn money by referring visitors -->
				<div class="block-s2">
					<div class="text-center small">
						<i>Designed by <a href="https://thememetro.com" class="text-muted">ThemeMetro.com</a></i>
					</div>
				</div>
				<!-- //Back link Section -->
				
			</div>
		</div>
		
		<a id="back-to-top" href="#" class="btn btn-primary btn-sm back-to-top" role="button"><i class="fas fa-angle-up icon-only bigger-110"></i></a>
		<!--End Footer-->

	</div><!-- /page container -->
	
	<!-- basic scripts -->
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/pace/pace.min.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/footable/footable.min.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/owl-carousel/owl.carousel.min.js"></script>
		
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/main.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/footable/footable.init.js"></script>
		
		<script>
		// init variables require for all front pages
			Apps.initNavTopBar();
		// end

		$(function () {
			$('#langScroll, #taskScroll').slimScroll({
				height: '190px',
				disableFadeOut: true,
				touchScrollStep: 50
			});
		});
	
		{if $templatefile eq 'homepage'}
		$(".features-slider").owlCarousel({
			{if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}
				rtl: true,
			{/if}				
			responsive:{
				0:{
					items:1,
				},
				768:{
					items:2,
				},
				992:{
					items:3,
				},
				1200:{
					items:3,
				}
			}
		});
		{/if}
		
		$(".partners-slider").owlCarousel({
			{if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}
			rtl: true,
			{/if}
			loop: true,			
			autoplay:true,
			dots: false,
			responsive:{
				0:{
					items:1,
				},
				450:{
					items:2,
				},
				768:{
					items:3,
				},
				992:{
					items:4,
				},
				1200:{
					items:5,
				}
			}
		});
		
		$('.mass-head').addClass('inner');
		
		var panelSwitch = $('.panel-switch');
		
		panelSwitch.on('click', function (e) {
			if (!$(this).is('a')) {
				var currCheck = $(this).find('input[type="checkbox"]');
					if (currCheck.is(':checked')) {
						panelSwitch.removeClass('checked');
						currCheck.prop('checked', false);
					} else {
						panelSwitch.addClass('checked');
						currCheck.prop('checked', true);
					}
					var that = $(this);
					setTimeout(function () {
						that.find('.loader').addClass('loading');
					}, 300);
			}
		});
			
		$("p:contains('Powered by')").remove();
		
		</script>
		
	{/if}

	{if $showingLoginPage}
		<script>
			$("p:contains('Powered by')").remove();
		</script>
	{/if}

	<div id="fullpage-overlay" class="hidden">
		<div class="outer-wrapper">
			<div class="inner-wrapper">
				<img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
				<br>
				<span class="msg"></span>
			</div>
		</div>
	</div>
	
	<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">{$LANG.close}</span>
					</button>
					<h4 class="modal-title">Title</h4>
				</div>
				<div class="modal-body">
					{$LANG.loading}
				</div>
				<div class="modal-footer">
					<div class="pull-left loader">
						<i class="fas fa-circle-notch fa-spin"></i> {$LANG.loading}
					</div>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						{$LANG.close}
					</button>
					<button type="button" class="btn btn-primary modal-submit">
						{$LANG.submit}
					</button>
				</div>
			</div>
		</div>
	</div>

	{include file="$template/includes/generate-password.tpl"}
	
	{$footeroutput}
	
	</body>
</html>
