
function overview() {
	document.getElementById('overview').style.display = 'inherit';
	document.getElementById('dates-prices').style.display = 'none';
	document.getElementById('tour').style.display = 'none';
	document.getElementById('reviews').style.display = 'none';
}

function dates_prices() {
	document.getElementById('overview').style.display = 'none';
	document.getElementById('dates-prices').style.display = 'inherit';
	document.getElementById('tour').style.display = 'none';
	document.getElementById('reviews').style.display = 'none';
}

function tour() {
	document.getElementById('overview').style.display = 'none';
	document.getElementById('dates-prices').style.display = 'none';
	document.getElementById('tour').style.display = 'inherit';
	document.getElementById('reviews').style.display = 'none';
}

function reviews() {
	document.getElementById('overview').style.display = 'none';
	document.getElementById('dates-prices').style.display = 'none';
	document.getElementById('tour').style.display = 'none';
	document.getElementById('reviews').style.display = 'inherit';
}




