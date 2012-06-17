/* OrgLookupTest.java */

import com.maxmind.geoip.*;
import java.io.IOException;

/* sample of how to use the GeoIP Java API with GeoIP Organization and ISP databases */
/* This example can also be used with the GeoIP Domain and ASNum databases */
/* Usage: java OrgLookupTest 64.4.4.4 */

void setup() {
  try {
    LookupService asnl = new LookupService("GeoIPASNumv6.dat");
    System.out.println("ASNum V6: " + asnl.getOrgV6(args[0]));
    asnl.close();
  }
  catch (IOException e) {
    System.out.println("IO Exception");
  }
}

