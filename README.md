ProcessingGeoIP
===============

This is a processing compatible library based on GeoIP Java API (v 1.2.8) and was put into a processing friendly library

Ken Frederick
ken.frederick@gmx.de

http://cargocollective.com/kenfrederick/
http://kenfrederick.blogspot.com/

https://github.com/frederickk/ProcessingGeoIP
http://www.maxmind.com/app/java

As of version 1.1.4 this API is fully thread safe.


/** 
  not all examples work properly in processing some
  modifications may be required to get them working
**/

To get started for GeoIP Country, look at the code in CountryLookupTest.pde.

CityLookupTest.pde contains an example for the MaxMind GeoIP City database.
OrgLookupTest.pde contains examples for the GeoIP Organization and ISP databases.
RegionLookupTest.pde contains an example for the MaxMind GeoIP Region database.
NetspeedLookupTest.pde contains an example for the MaxMind GeoIP Netspeed database.

BenchmarkGeoIP.pde contains benchmarks for various databases using various options.


Getting Started
===============

Note that CountryLookupTest assumes that you have the GeoIP Country database
installed at /usr/local/share/GeoIP/GeoIP.dat

A free GeoLite Country database is available from:
http://www.maxmind.com/app/geoip_country

A free GeoLite City database is available from:
http://www.maxmind.com/app/geolitecity

MaxMind GeoIP Country offers greater accuracy over the free database.
MaxMind GeoIP Country, Region, City, ISP, and Organization are available
for purchase from here:
http://www.maxmind.com/app/products

Please send any comments to support@maxmind.com



Memory Caching & Other Options
===============
The following options can be passed as the second parameter to the
LookupService constructor:

GEOIP_STANDARD - read database from filesystem, uses least memory.

GEOIP_MEMORY_CACHE - load database into memory, faster performance
        but uses more memory

GEOIP_CHECK_CACHE - check for updated database.  If database has been updated,
        reload filehandle and/or memory cache.

GEOIP_INDEX_CACHE - just cache
        the most frequently accessed index portion of the database, resulting
        in faster lookups than GEOIP_STANDARD, but less memory usage than
        GEOIP_MEMORY_CACHE - useful for larger databases such as
        GeoIP Organization and GeoIP City.  Note, for GeoIP Country, Region
        and Netspeed databases, GEOIP_INDEX_CACHE is equivalent to GEOIP_MEMORY_CACHE

Note the options can be combined, for example:
LookupService cl = new LookupService(dbfile, LookupService.GEOIP_MEMORY_CACHE | LookupService.GEOIP_CHECK_CACHE);

