module StylesHelper
	def get_style item
		style = Style.find(item.style_id)
    	@mystyle = "<style type='text/css'>"
    		@mystyle = @mystyle + ".pf { font-family: " + style.primary_font + "; } "
			@mystyle = @mystyle + ".sf { font-family: " + style.secondary_font + "; } "
			@mystyle = @mystyle + ".af { font-family: " + style.alt_font + "; }"
			@mystyle = @mystyle + ".pc { color: " + style.primary_color + "; }"
			@mystyle = @mystyle + ".sc { color: " + style.secondary_color + "; }"
			@mystyle = @mystyle + ".ac { color: " + style.alt_color + "; }"

			@mystyle = @mystyle + ".bg { background-color: " + style.alt_color + "; }"

			@mystyle = @mystyle + ".bgclear { background-color: transparent; }"

			@mystyle = @mystyle + ".center {text-align: center; text-align: -webkit-center; }"

			@mystyle = @mystyle + ".bglight {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.25);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			@mystyle = @mystyle + ".bgmed {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.5);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			@mystyle = @mystyle + ".bgdark {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.75);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			if item.photo_id != nil
		        @mystyle = @mystyle + "bgimg { background-image: url('"+ url_for(Photo.find(item.photo_id).image) +"');"
		        @mystyle = @mystyle + "background-repeat: no-repeat;"
        		@mystyle = @mystyle + "background-size: 100%; }"
  				@mystyle = @mystyle + ".bgcover { background: url("+ url_for(Photo.find(item.photo_id).image)+") no-repeat center;" 
   				@mystyle = @mystyle + "-webkit-background-size: cover;"
  				@mystyle = @mystyle + "-moz-background-size: cover;"
  				@mystyle = @mystyle + "-o-background-size: cover;"
  				@mystyle = @mystyle + "background-size: 100% x 100%;}"
    		end
      		@mystyle = @mystyle + "</style>"
#      		@mystyle = @mystyle + "<link href='https://fonts.googleapis.com/css?family=" + style.primary_font + "' rel='stylesheet'>"
 #     		@mystyle = @mystyle + "<link href='https://fonts.googleapis.com/css?family=" + style.secondary_font + "' rel='stylesheet'>"
  #    		@mystyle = @mystyle + "<link href='https://fonts.googleapis.com/css?family=" + style.alt_font + "' rel='stylesheet'>"

      		get_style = @mystyle
    end

	def nget_style item, n
		style = Style.find(item.style_id)
    	@mystyle = "<style type='text/css'> .pf { font-family: " + style.primary_font + "; } "
			@mystyle = @mystyle + ".sf_"+n.to_s+" { font-family: " + style.secondary_font + "; } "
			@mystyle = @mystyle + ".af_"+n.to_s+" { font-family: " + style.alt_font + "; }"
			@mystyle = @mystyle + ".pc_"+n.to_s+" { color: " + style.primary_color + "; }"
			@mystyle = @mystyle + ".sc_"+n.to_s+" { color: " + style.secondary_color + "; }"
			@mystyle = @mystyle + ".ac_"+n.to_s+" { color: " + style.alt_color + "; }"

			@mystyle = @mystyle + ".bg_"+n.to_s+" { background-color: " + style.alt_color + "; }"

			@mystyle = @mystyle + ".bgclear_"+n.to_s+" { background-color: transparent; }"

			@mystyle = @mystyle + ".center_"+n.to_s+" {text-align: center; text-align: -webkit-center; }"

			@mystyle = @mystyle + ".bglight_"+n.to_s+" {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.25);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			@mystyle = @mystyle + ".bgmed_"+n.to_s+" {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.5);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			@mystyle = @mystyle + ".bgdark_"+n.to_s+" {  background: rgb(0, 0, 0) transparent; background: rgba(0, 0, 0, 0.75);"
			@mystyle = @mystyle + "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);"
            @mystyle = @mystyle + "-ms-filter: 'progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)';"
        	@mystyle = @mystyle + "}"
			if item.photo_id != nil
		        @mystyle = @mystyle + "bgimg_"+n.to_s+" { background-image: url('"+ url_for(Photo.find(item.photo_id).image) +"');"
		        @mystyle = @mystyle + "background-repeat: no-repeat;"
        		@mystyle = @mystyle + "background-size: 100%; }"
  				@mystyle = @mystyle + ".bgcover_"+n.to_s+" { background: url("+ url_for(Photo.find(item.photo_id).image)+") no-repeat center;" 
   				@mystyle = @mystyle + "-webkit-background-size: cover;"
  				@mystyle = @mystyle + "-moz-background-size: cover;"
  				@mystyle = @mystyle + "-o-background-size: cover;"
  				@mystyle = @mystyle + "background-size: 100% x 100%;}"
    		end
      		@mystyle = @mystyle + "</style>"
      		nget_style = @mystyle
    end

end
