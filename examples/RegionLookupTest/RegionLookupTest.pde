/* RegionLookupTest.java */

/* Requires subscription to MaxMind GeoIP Region database */

import com.maxmind.geoip.*;
import java.io.IOException;

void setup() {
  try {
    LookupService cl = new LookupService("GeoIPRegion.dat");
    Region l = cl.getRegion(args[0]);
    System.out.println("Country Code: " + l.countryCode);
    System.out.println("Country Name: " + l.countryName);
    System.out.println("Region Code: " + l.region);
    System.out.println("Region Name: " + regionName.regionNameByCode(l.countryCode, l.region));
    cl.close();
  }
  catch (IOException e) {
    System.out.println("IO Exception");
  }
}

