component {
	
	function configure() {
		// The user will override these via config settings.
		settings = {
			hideBanner=false,
			bannerText='',
			bannerFilePath=''
		};
	}
	
	// This method listens for each time the CLI starts up.
	function onCLIStart() {
		// hide the banner entirely
		if( settings.hideBanner ) {
			interceptData.banner = '';
		// Show custom text
		} else if ( len( settings.bannerText ) ) {
			interceptData.banner = settings.bannerText & chr(10);
		// Display a file's contents
		} else if ( len( settings.bannerFilePath ) ) {
			if( fileExists( settings.bannerFilePath ) ) {
				interceptData.banner = fileRead( settings.bannerFilePath ) & chr(10);
			} else {
				interceptData.banner = 'Banner file [#settings.bannerFilePath#] missing!' & chr(10);
			}
		}
	}	
}