

$(document).ready(function() {
	var isMobile = false; //initiate as false
// device detection
if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) 
    || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) isMobile = true;
	if (!isMobile) {
		$('body').on('click', 'a[href^="tel:"]', function() {
			$(this).attr('href',
				$(this).attr('href').replace(/^tel:/, 'callto://+'));
		});
	}
	

$( window ).resize(function() {resize();});
resize();
refresh_close();



	
});

function refresh_close(){
$('.close').click(function(){$(this).parent().fadeOut(200);});
}
function resize(){$('#notifications').height(window.innerHeight - 50);}

function ThankYou() {
	var bottom_center = '<div id="notifications-bottom-right-tab"><div id="notifications-bottom-right-tab-close" class="close"><span class="iconb" data-icon="&#xe20e;"></span></div><div id="notifications-bottom-right-tab-avatar"><img src="/Content/images/avatar.png" width="70" height="70" /></div><div id="notifications-bottom-right-tab-right"><div id="notifications-bottom-right-tab-right-title"><span>Thank you</span> for shopping</div><div id="notifications-bottom-right-tab-right-text">Your product was added to the cart...<br/><button class="button btn-cart" onclick="GoCart()">View Cart</button>&nbsp;<button class="button btn-cart" onclick="Checkout()">Checkout</button></div></div></div>';
	$("#notifications-bottom-right").html();
	$("#notifications-bottom-right").html(bottom_center);
	$("#notifications-bottom-right-tab").addClass('animated shake');
	refresh_close();
}

function ThankYouForPurchase(message) {
    var bottom_center = '<div id="notifications-bottom-right-tab"><div id="notifications-bottom-right-tab-close" class="close"><span class="iconb" data-icon="&#xe20e;"></span></div><div id="notifications-bottom-right-tab-avatar"><img src="/Content/images/avatar.png" width="70" height="70" /></div><div id="notifications-bottom-right-tab-right"><div id="notifications-bottom-right-tab-right-title"><span>Thank you</span> for shopping</div><div id="notifications-bottom-right-tab-right-text">' + message + '<br/><button class="button btn-cart" onclick="Cancel()">Cancel</button></div></div></div>';
    $("#notifications-bottom-right").html();
    $("#notifications-bottom-right").html(bottom_center);
    $("#notifications-bottom-right-tab").addClass('animated shake');
    refresh_close();
}

function Cancel() {
    $('#notifications-bottom-right-tab').fadeOut(50);
}

function RefreshCart(cart) {
	$("#cart").html("<div id='cart'><a href='/Cart' style='float:left;'><img src='/Content/images/cart.png' height='25px' /></a><span style='line-height:25px;'>" + cart.Items.length + " Items " + cart.TotalFormatted + "</span><a href='/Checkout' style='float:right;'><img src='/Content/images/checkout.png' height='25px' /></a></div>");
}

function Checkout() {
	window.location = "/checkout";
}

function GoCart() {
	window.location = "/cart";
}

function Add(asin, price, listingId, title) {
	var qty = $("#qty")[0].value;
	$.get("/Shop/Add?quantity=" + qty + "&asin=" + asin + "&listingId=" + listingId + "&price=" + price + "&title=" + title, function (data) {
		RefreshCart(data);
		ThankYou();
	});
}

function AddList(asin, price, listingId, quantity, title) {
	$.get("/Shop/Add?quantity=" + quantity + "&asin=" + asin + "&listingId=" + listingId + "&price=" + price + "&title=" + title, function (data) {
		RefreshCart(data);
		ThankYou();
	});
}