/**
* Set the file to display as the CommandBox startup banner.
*/
component {
	property name='ConfigService' inject='ConfigService';

	/**
	* @bannerFile.hint The path of the file to display
	*/	
	function run( required string bannerFile ) {
		
		if( len( arguments.bannerFile ) ) {
			arguments.bannerFile = fileSystemUtil.resolvePath( arguments.bannerFile );
		}
		
		// Get the config settings
		var configSettings = ConfigService.getconfigSettings();
		
		// Set the setting
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'hideBanner' ]=false;
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'bannerText' ]='';
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'bannerFilePath' ]=arguments.bannerFile;
 
		// Save the setting struct
		ConfigService.setConfigSettings( configSettings );
				
		print.yellowBoldLine( 'CommandBox banner file path set.' );
	}
}