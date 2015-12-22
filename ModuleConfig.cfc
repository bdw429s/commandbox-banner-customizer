component {
	
	function configure() {
		settings = {
			hideBanner=false,
			bannerText='',
			bannerFilePath=''
		};
	}
	
	function onCLIStart() {
		if( settings.hideBanner ) {
			interceptData.banner = '';
		} else if ( len( settings.bannerText ) ) {
			interceptData.banner = settings.bannerText & chr(10);
		} else if ( len( settings.bannerFilePath ) ) {
			if( fileExists( settings.bannerFilePath ) ) {
				interceptData.banner = fileRead( settings.bannerFilePath ) & chr(10);
			} else {
				interceptData.banner = 'Banner file [#settings.bannerFilePath# missing!' & chr(10);
			}
		}
	}	
}