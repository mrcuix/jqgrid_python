;(function($) {
    var methods = {}
    $.each({ put: 'PUT', del: 'DELETE' }, function(prop, method) {
        methods[prop] = function(url, data, callback, type) {
            if ($.isFunction(data)) {
                type = type || callback
                callback = data
                data = { }
            }
            
			
            return $.ajax({ headers: { 'X-HTTP-Method-Override': method },
                            type:    'POST',
                            url:     url,
                            data:    data,
                            success: callback,
                            dataType: type })
							
							
							
							
		
							
        }
    })
    $.extend(methods)
})(jQuery);