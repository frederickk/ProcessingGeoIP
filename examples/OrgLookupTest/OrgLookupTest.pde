/* OrgLookupTest.java */

import com.maxmind.geoip.*;
import java.io.IOException;

/* sample of how to use the GeoIP Java API with GeoIP Organization and ISP databases */
/* This example can also be used with the GeoIP Domain and ASNum databases */
/* Usage: java OrgLookupTest 64.4.4.4 */

void setup() {
  try {
    LookupService orgl = new LookupService("GeoIPOrg.dat");
    LookupService ispl = new LookupService("GeoIPISP.dat");
    System.out.println("Organization: " + orgl.getOrg(args[0]) +
      "\tISP: " + ispl.getOrg(args[0]));
    orgl.close();
    ispl.close();
  }
  catch (IOException e) {
    System.out.println("IO Exception");
  }
}

