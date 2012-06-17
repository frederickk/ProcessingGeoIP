/**
 *  https://forum.processing.org/topic/ip-location-api-example
 *
 *  you'll need to download Maxmind's free GeoLite City binary database
 *  http://www.maxmind.com/app/geolitecity
 *  add the GeoLiteCity.dat to the Data directory.
 *
 */

// -----------------------------------------------------------------------------
// libraries
// -----------------------------------------------------------------------------
import com.maxmind.geoip.*;

// -----------------------------------------------------------------------------
// properties
// -----------------------------------------------------------------------------
LookupService cl;

void setup() {
  loadGeoIP(); 
  CityLookupTest();
}


// -----------------------------------------------------------------------------
// methods
// -----------------------------------------------------------------------------
void loadGeoIP() {
  try {
    cl = new LookupService(dataPath("GeoLiteCity.dat"), LookupService.GEOIP_INDEX_CACHE);
  }
  catch (IOException e) {
    System.out.println("IO Exception:" + e);
  }
}

void CityLookupTest () {
  try {
    // Location l1 = cl.getLocation("213.52.50.8");
    Location l2 = cl.getLocation("198.4.104.128");
    System.out.println("countryCode: " + l2.countryCode +
      "\n countryName: " + l2.countryName +
      "\n region: " + l2.region +
      "\n regionName: " + regionName.regionNameByCode(l2.countryCode, l2.region) +
      "\n city: " + l2.city +
      "\n postalCode: " + l2.postalCode +
      "\n latitude: " + l2.latitude +
      "\n longitude: " + l2.longitude +
      //  "\n distance: " + l2.distance(l1) +
      //"\n distance: " + l1.distance(l2) +
      "\n metro code: " + l2.metro_code +
      "\n area code: " + l2.area_code +
      "\n timezone: " + timeZone.timeZoneByCountryAndRegion(l2.countryCode, l2.region));
    cl.close();
  }
  catch (Exception e) {
    System.out.println("Exception: " + e);
  }
}
