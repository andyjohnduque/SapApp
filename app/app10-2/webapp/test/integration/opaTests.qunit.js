sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'app102/test/integration/FirstJourney',
		'app102/test/integration/pages/RENTAL_OBJECTSMain'
    ],
    function(JourneyRunner, opaJourney, RENTAL_OBJECTSMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('app102') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRENTAL_OBJECTSMain: RENTAL_OBJECTSMain
                }
            },
            opaJourney.run
        );
    }
);