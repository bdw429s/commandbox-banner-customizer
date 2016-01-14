/**
* Set the text of the CommandBox startup banner.
*/
component {
	property name='ConfigService' inject='ConfigService';

	/**
	* @bannerText.hint The text to display in the banner
	*/	
	function run( required string bannerText ) {
		// Get the config settings
		var configSettings = ConfigService.getconfigSettings();
		
		// Set the setting
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'hideBanner' ]=false;
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'bannerText' ]=arguments.bannerText;
 
		// Save the setting struct
		ConfigService.setConfigSettings( configSettings );
				
		print.yellowBoldLine( 'CommandBox banner text set.' );
	}
}