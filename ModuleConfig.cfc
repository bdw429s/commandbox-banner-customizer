component {
	
	function configure() {
		// The user will override these via config settings.
		settings = {
			hideBanner=false,
			bannerText='',
			bannerFilePath=''
		};
	}
	
	/**
	* This method listens for each time the CLI starts up.
	* @interceptData.hint This is the data passed to our interceptor about the event
	*/
	function onCLIStart( required struct interceptData ) {
		// hide the banner entirely
		if( settings.hideBanner ) {
			arguments.interceptData.banner = '';
		// Show custom text
		} else if ( len( settings.bannerText ) ) {
			arguments.interceptData.banner = settings.bannerText & chr(10);
		// Display a file's contents
		} else if ( len( settings.bannerFilePath ) ) {
			if( fileExists( settings.bannerFilePath ) ) {
				arguments.interceptData.banner = fileRead( settings.bannerFilePath ) & chr(10);
			} else {
				arguments.interceptData.banner = 'Banner file [#settings.bannerFilePath#] missing!' & chr(10);
			}
		}
	}	
}
