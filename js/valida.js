$(document).ready(function(){
    $("#form-contacto").validate({
	rules:{
	    nombre: {
		required: true,
		maxlength: 100,
		minlength: 3
	    },
	    email: {
		required: true,
		email:true
	    },
	    telefono: {
		digits: true,
		maxlength: 10,
		minlength: 8
	    },
	    mensaje: {
		required: true
	    }
	},
	submitHandler: function(form){
	    if (grecaptcha.getResponse()) {
		
		
		var keys = ['nombre', 'email', 'telefono', 'mensaje'];
		var data = {}
		$.each (keys, function (idx, key){
		    data[key] = $('.'+key).val();
		    
		});
		
		$.ajax({
		    type:"POST",
		    url:"valida-captcha.php",
		    data: data,
		    success: function(){
			alert("Gracias por contactarnos!!");
			window.location.reload(true);
		    }
		});
		
		//alert("Exitoso, recolectar valores y mandar a formulario")
	    } else {
		alert("Confirma el captcha para proceder a mandar los datos");
	    }
	    
	}
	
    })
})
		  
