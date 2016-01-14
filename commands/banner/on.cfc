/**
* Show the CommandBox startup banner.
*/
component {
	property name='ConfigService' inject='ConfigService';
	
	function run() {
		// Get the config settings
		var configSettings = ConfigService.getconfigSettings();
		
		// Set the setting
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'hideBanner' ]=false;
 
		// Save the setting struct
		ConfigService.setConfigSettings( configSettings );
		
		print.greenBoldLine( 'CommandBox banner turned ON' );
	}
}