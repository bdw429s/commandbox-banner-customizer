/**
* Hide the CommandBox startup banner.
*/
component {
	property name='ConfigService' inject='ConfigService';
	
	function run() {
		// Get the config settings
		var configSettings = ConfigService.getconfigSettings();
		
		// Set the setting
		configSettings[ 'modules' ][ 'commandbox-banner-customizer' ][ 'hideBanner' ]=true;
 
		// Save the setting struct
		ConfigService.setConfigSettings( configSettings );
				
		print.redBoldLine( 'CommandBox banner turned OFF' );
	}
}