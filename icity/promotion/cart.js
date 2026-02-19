function doCalc(promotionId) {
	var dialog = $("#dialog-" + promotionId);
	var section = $(".price-" + $(".mykad :selected", dialog).val(), dialog);
	
	var totalAdult = Number($(".ttl-a", section).val());
	var totalChild = Number($(".ttl-c", section).val());
	var totalSenior = Number($(".ttl-s", section).val());
	
	if(totalAdult == 0) {
		alert("There must be at least 1 " + $("#adultOrQtyLabel", dialog).val() + ".");
		$(".ttl-a", section).val(1);
		return 0;
	}
	
	var totalAmt = (Number($(".price-a", section).text()) * totalAdult) +
			(Number($(".price-c", section).text()) * totalChild) +
			(Number($(".price-s", section).text()) * totalSenior);
	
	$(".ttl-pax", dialog).val(totalAdult + totalChild + totalSenior);
	$("input.ttl-amount", dialog).val(Number(totalAmt).toFixed(2));
	return totalAmt;
}

function doAddCart(dialog, promotionId, promotionCode, checkout) {
	var totalAmt = doCalc(promotionId);
	
	var dialog = $("#dialog-" + promotionId);
	var section = $(".price-" + $(".mykad :selected", dialog).val(), dialog);
	
	var data = {
		id: promotionId,
		date: $("input.visit-date", dialog).val(),
		mykad: $("select.mykad :selected", dialog).val(),
		adult: $(".ttl-a", section).val(),
		child: $(".ttl-c", section).val(),
		senior: $(".ttl-s", section).val(),
		total: totalAmt,
		currentTier: $("#currentTier").val()
	};
	
	$.ajax({
		url: _contextPath + "/promotion/add-cart.do",
		data: data,
		dataType: "json",
		success: function(response) {
			if(response.error) {
				alert(response.error);
				if(response.myKadAdult){
					$(".price-mykad span.price-a").text(response.myKadAdult);
					$(".price-mykad span.price-c").text(response.myKadChild);
					$(".price-mykad span.price-s").text(response.myKadSenior);
					
					$(".price-non-mykad span.price-a").text(response.NmyKadAdult);
					$(".price-non-mykad span.price-c").text(response.NmyKadChild);
					$(".price-non-mykad span.price-s").text(response.NmyKadSenior);
					
					$("#currentTier").val(response.tier);
					
					doCalc(promotionId);
				}
			}
			else {
				alert("Package is added to your cart.");
				getCartCount();
				
				$(dialog).dialog("close");
				
				if (checkout != null) {
					window.location = _contextPath + "/promotion/checkout.do";
				}
			}
			
		}
	});	
}

function showButtons() {
	$(":button:contains('Check Out')").show();
	$(":button:contains('Add to Cart')").show();
	$(":button:contains('Cancel')").show();
}

function hideButtons() {
	$(":button:contains('Check Out')").hide();
	$(":button:contains('Add to Cart')").hide();
	$(":button:contains('Cancel')").hide();
}


