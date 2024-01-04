%let pgm=utl-gis-census-zipcode-maps-no-credit-card-api-or-restrictions-wps-r-tmap;

Using census zipcode maps no credit card api or restrictions wps r tmap

Output zipcode map                                                                                                                    
http://tinyurl.com/2ukfn9x5                                                                                                    
https://github.com/rogerjdeangelis/utl-gis-census-zipcode-maps-no-credit-card-api-or-restrictions-wps-r-tmap/blob/main/age.pdf 

github
http://tinyurl.com/yvj8jnau
https://github.com/rogerjdeangelis/utl-gis-census-zipcode-maps-no-credit-card-api-or-restrictions-wps-r-tmap

No API, credit card or restrictions

If you want just the zipcode zipcode(ZTCA - approx zipcode)
www2.census.gov/geo/tiger/TIGER2023/ZCTA520/
tl_2023_us_zcta520.zip

However if you want ALL the tiger line files use  (you need to install 7zip)
Also open withn options 'open archive' and select the fike you want ro unzip.

Links good for 2 years (ms onedrive limit)
https://1drv.ms/u/s!AovFHZtMPA-7gmIV-TVa7zi5RqNR?e=hUM98j `7gb

Instead of downloading more than 20,000 tiny zip files you only have to download 49 7 zip
files. Another advantage is the 7 zip files are up to 50% smaller than the original zip files.


Note the census tigerline shapefiles are in thousands of tiny pieces, but it is possible
to join the polygons to get a bigger picture. Something like this.

library(tmap)

tm_shape(countries_spdf[countries_spdf@data$subregion == "xxxxxxx", ]) +
tm_borders()

tm_shape(countries_spdf[countries_spdf@data$subregion == "xxxxxxx", ]) +
tm_borders()

tm_shape(countries_spdf[countries_spdf@data$region == "all", ]) +
tm_borders()

If I had time I would make all the Census data downloadable, no-credit-card-api-or-restrictions.
It is not big data.
Especially the detail data sf1 files.

/********************************************************************************************************************************************/
/*                                                                                                                                          */
/* For example when you unzip  EDGE you get one file instead of 3,325 files                                                                 */
/*                                                                                                                                          */
/*  *We are using ZCTA520 for this repo                                                                                                     */
/*                                                                                                                                          */
/*  SHORT                   ONEDRIVEFILE                          LONG_DESCRIPTION                                               SIZE       */
/*                                                                                                                                          */
/*  ZCTA520*   cartographic tl_2023_us_zcta520.exe                2020 5-Digit ZIP Code Tab                                   178,988,996   */
/*                                                                                                                                          */
/*  ADDR                    tl_2023_xxxxx_addr.exe                Address Range Relationship File                             346,377,028   */
/*  ADDRFEAT                tl_2023_xxxxx_addrfeat.exe            Address Range Feature                                     1,396,002,806   */
/*  ADDRFN                  tl_2023_xxxxx_addrfn.exe              Address Range-Feature Name Relationship                     180,974,965   */
/*  AIANN                   tl_2023_us_aiann.exe                  American Indian / Alaska Native / Native Hawaiian Areas       3,944,839   */
/*  AITSN                   tl_2023_us_aitsn.exe                  American Indian Tribal Subdivision National                   2,428,787   */
/*  ANRC       cartographic tl_2023_02_anrc.exe                   Alaska Native Regional Corporation                              509,635   */
/*  AREALM                  tl_2023_xx_arealm.exe                 Area Landmark                                                28,426,443   */
/*  AREAWATER               tl_2023_xxxxx_areawater.exe           Area Hydrography                                            522,193,719   */
/*  BG         cartographic tl_2023_xx_bg.exe__                   Block Group                                                 242,318,904   */
/*  CBSA       cartographic tl_2023_us_cbsa.exe                   Core Based Statistical Area                                  12,789,538   */
/*  CD         cartographic tl_2023_xx_cd.exe__                   118th Congressional District                                 12,698,376   */
/*  COASTLINE               tl_2023_coastline.exe                 Coastline                                                     6,901,030   */
/*  CONCITY                 tl_2023_xx_concity.exe                Consolidated City                                               352,700   */
/*  COUNTY     cartographic tl_2023_us_county.exe                 County                                                       30,118,829   */
/*  COUSUB     cartographic tl_2023_xx_cousub.exe                 County Subdivision                                           99,582,239   */
/*  CSA        cartographic tl_2023_us_csa.exe_                   Combined Statistical Area                                     5,176,549   */
/*  EDGE                    tl_2023_xxxxx_edge.exe                All Lines                                                 5,204,395,872   */
/*  ELSD                    tl_2023_xx_elsd.exe                   Elementary School District                                    5,229,157   */
/*  ESTATE                  tl_2023_78_estate.exe                 Estate                                                          507,299   */
/*  FACEMIL                 tl_2023_us_facemil.exe                Topological Faces-Military Installation Relationship File       462,374   */
/*  FACES                   tl_2023_xxxxx_faces.exe               Topological Faces (Polygons with All Geocodes)            4,153,445,826   */
/*  FACESAH                 tl_2023_xxxxx_facesah.exe             Topological Faces-Area Hydrography Relationship File         11,033,044   */
/*  FACESAL                 tl_2023_xx_facesal.exe                Topological Faces-Area Landmark Relationship File             2,030,701   */
/*  FEATNAMES               tl_2023_xxxxx_featnames.exe           Feature Names Relationship File                             592,174,539   */
/*  INTERNATIONALBOUNDARY   tl_2023_us_internationalboundary.exe  International Boundaries                                        633,125   */
/*  LINEARWATER             tl_2023_xxxxx_linearwater.exe         Linear Hydrography                                          819,542,628   */
/*  METDIV                  tl_2023_us_metdiv.exe                 Metropolitan Division                                         1,110,458   */
/*  MIL                     tl_2023_us_mil.exe_                   Military Installation                                         1,535,879   */
/*  PLACE      cartographic tl_2023_xx_place.exe                  Place                                                        58,971,360   */
/*  POINTLM                 tl_2023_xx_pointlm.exe                Point Landmark                                               14,795,294   */
/*  PRIMARYROADS            tl_2023_us_primaryroads.exe           Primary Roads                                                10,864,705   */
/*  PRISECROADS             tl_2023_xx_prisecroads.exe            Primary and Secondary Roads                                  81,736,338   */
/*  PUMA20     cartographic tl_2023_xx_puma20.exe                 2020 Public Use Microdata Area                               22,919,653   */
/*  RAILS                   tl_2023_us_rails.exe                  Rails                                                        14,443,076   */
/*  ROADS                   tl_2023_xxxxx_roads.exe               All Roads                                                 1,700,817,692   */
/*  SCSD                    tl_2023_xx_scsd.exe                   Secondary School Districts                                    2,996,132   */
/*  SDADM                   tl_2023_50_sdadm.exe                  Administrative School Districts                                 412,798   */
/*  SLDL       cartographic tl_2023_xx_sldl.exe                   State Legislative District – Lower Chamber                   37,948,542   */
/*  SLDU       cartographic tl_2023_xx_sldu.exe                   State Legislative District – Upper Chamber                   26,051,832   */
/*  STATE      cartographic tl_2023_us_state.exe                  State and Equivalent                                          3,446,504   */
/*  SUBBARRIO               tl_2023_72_subbarrio.exe              SubMinor Civil Division (Subbarios in Puerto Rico)              291,333   */
/*  TABBLOCK20              tl_2023_xx_tabblock20.exe             2020 Tabulation (Census) Block                            2,590,421,350   */
/*  TBG                     tl_2023_us_tbg.exe_                   Tribal Block Group                                            4,148,162   */
/*  TRACT      cartographic tl_2023_xx_tract.exe                  Census Tract                                                319,821,446   */
/*  TTRACT     cartographic tl_2023_us_ttract.exe                 Tribal Census Tract                                           3,137,073   */
/*  UAC20                   tl_2023_us_uac20.exe                  2020 Urban Area/Urban Cluster                                30,383,817   */
/*  UNSD       cartographic tl_2023_xx_unsd.exe                   Unified School District                                      50,935,620   */
/*                                                                                                                                          */
/********************************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

/*----                                                                   ----*/
/*----  Median age and zipcode centroids for ;abeling zipcodes           ----*/
/*----                                                                   ----*/

options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
input zip $5. +1 age cenLon cenLat;
cards4;
48809 27 -85.2284 43.0772
48838 56 -85.2473 43.1901
49301 19 -85.4714 42.9552
49302 20 -85.4222 42.8298
49306 24 -85.5877 43.0777
49315 33 -85.7038 42.8054
49316 34 -85.5463 42.7870
49319 37 -85.5368 43.2242
49321 39 -85.6649 43.0582
49330 48 -85.7251 43.2386
49331 49 -85.3591 42.9485
49341 59 -85.5118 43.1147
49343 61 -85.4773 43.2799
49345 63 -85.6944 43.1617
49418 36 -85.7561 42.8962
49428 46 -85.8303 42.9075
49501 19 -85.6585 42.9649
49502 20 -85.6619 42.9615
49503 21 -85.6597 42.9632
49504 22 -85.7210 42.9865
49505 23 -85.6252 43.0104
49506 24 -85.5944 42.9417
49507 25 -85.6527 42.9346
49508 26 -85.6251 42.8736
49509 27 -85.7062 42.8839
49512 30 -85.5354 42.8815
49514 32 -85.6559 42.9656
49519 37 -85.7047 42.9011
49525 43 -85.6019 43.0128
49534 52 -85.7689 42.9769
49544 62 -85.7432 43.0016
49546 64 -85.5320 42.9286
49548 66 -85.6605 42.8666
;;;;
run;quit;

/*       _                               _ _       _         _                   _
(_)_ __ | |_ ___ _ __ _ __ ___   ___  __| (_) __ _| |_ ___  (_)_ __  _ __  _   _| |_
| | `_ \| __/ _ \ `__| `_ ` _ \ / _ \/ _` | |/ _` | __/ _ \ | | `_ \| `_ \| | | | __|
| | | | | ||  __/ |  | | | | | |  __/ (_| | | (_| | ||  __/ | | | | | |_) | |_| | |_
|_|_| |_|\__\___|_|  |_| |_| |_|\___|\__,_|_|\__,_|\__\___| |_|_| |_| .__/ \__,_|\__|
                                                                    |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* JUST BEFORE MAPPING                                                                                                    */
/*                                                                                                                        */
/* Classes 'sf' and 'data.frame': 330 obs. of  15 variables                                                               */
/*                                                                                                                        */
/* Reading layer `tl_2023_us_zcta520' from data source `D:\shp\tl_2023_us_zcta520.shp' using driver `ESRI Shapefile'      */
/* Simple feature collection with 33791 features and 10 fields                                                            */
/* Geometry type: MULTIPOLYGON                                                                                            */
/* Dimension:     XY                                                                                                      */
/* Bounding box:  xmin: -176.6967 ymin: -14.37378 xmax: 145.8305 ymax: 71.34132                                           */
/* Geodetic CRS:  NAD83                                                                                                   */
/*                                                                                                                        */
/*  $ AGE       : num  37 62 63 30 43 19 23 36 33 27 ..   WE ADDED THIS VARIABLE                                          */
/* .                                                                                                                      */
/*  $ ZCTA5CE20 : chr  "49519" "49544" "49345" "49512" ...                                                                */
/*  $ GEOID20   : chr  "49519" "49544" "49345" "49512" ...                                                                */
/*  $ GEOIDFQ20 : chr  "860Z200US49519" "860Z200US49544" "860Z200US49345" "860Z200US49512" ...                            */
/*  $ CLASSFP20 : chr  "B5" "B5" "B5" "B5" ...                                                                            */
/*  $ MTFCC20   : chr  "G6350" "G6350" "G6350" "G6350" ...                                                                */
/*  $ FUNCSTAT20: chr  "S" "S" "S" "S" ...                                                                                */
/*  $ ALAND20   : num  2.07e+07 5.15e+07 1.35e+08 5.96e+07 6.07e+07 ...                                                   */
/*  $ AWATER20  : num  487076 483231 2082905 712354 3180906 ...                                                           */
/*  $ INTPTLAT20: chr  "+42.8957654" "+43.0389322" "+43.1539218" "+42.8801208" ...                                        */
/*  $ INTPTLON20: chr  "-085.7195096" "-085.7465700" "-085.7052303" "-085.5532027" ...                                    */
/*  $ CENLON    : num  -85.7 -85.7 -85.7 -85.5 -85.6 ...                                                                  */
/*  $ CENLAT    : num  42.9 43 43.2 42.9 43 ...                                                                           */
/*  $ rank      : int  1 1 1 1 1 1 1 1 1 1 ...                                                                            */
/*  $ geometry  :sfc_MULTIPOLYGON of length 30; first list element: List of 1                                             */
/*   ..$ :List of 1                                                                                                       */
/*   .. ..$ : num [1:363, 1:2] -85.7 -85.7 -85.7 -85.7 -85.7 ...                                                          */
/*   ..- attr(*, "class")= chr [1:3] "XY" "MULTIPOLYGON" "sfg"                                                            */
/*  - attr(*, "sf_column")= chr "geometry"                                                                                */
/*  - attr(*, "agr")= Factor w/ 3 levels "constant","aggregate",..: NA NA NA NA NA NA NA NA NA NA ...                     */
/*   ..- attr(*, "names")= chr [1:14] "ZCTA5CE20" "GEOID20" "GEOIDFQ20" "CLASSFP20" ...                                   */
/*  - attr(*, "tigris")= logi NA                                                                                          */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utl_submit_wps64x('
libname sd1 "d:/sd1";
proc r;
export data=sd1.have r=have;
submit;
library(tidyverse);
library(sf);
library(tmap);
library(tigris);
df <- st_read("d:/shp/tl_2023_us_zcta520.shp") %>%
 filter(
   ZCTA5CE20 %in% c(
    "48809", "48838", "49301", "49302", "49306",
    "49315", "49316", "49319", "49321", "49330", "49331",
    "49341", "49343", "49345", "49418", "49428", "49501",
    "49502", "49503", "49504", "49505", "49506", "49507",
    "49508", "49509", "49512", "49514", "49519", "49525",
    "49534", "49544", "49546", "49548"));

df_points_centroid <- df %>%
  mutate(centroid = st_centroid(geometry)) %>%
  as.data.frame() %>%
  select(-geometry) %>%
  st_as_sf();

df<-geo_join(df, have, "ZCTA5CE20", "ZIP", how = "left");

str(df);

map<-tm_shape(df) +
  tm_polygons("AGE") +
  tm_borders() +
  tm_fill(col = "gray") +
  tm_text("ZCTA5CE20", scale=1, bg.alpha=0) +
  tm_shape(df_points_centroid) +
  tm_dots(col = "gray", size = .0001) +
  tm_layout(legend.position = c("LEFT","TOP"),
      legend.frame = TRUE,
      main.title = "Median Age Kent County Michigan by Zipcode",
      main.title.position = "center");
  tmap_save(map, "d:/pdf/nat/age.pdf", width=11, height=7.5, asp=0);
endsubmit;
');


/*                              _
  _____  ____ _ _ __ ___  _ __ | | ___   _   _ ___  ___
 / _ \ \/ / _` | `_ ` _ \| `_ \| |/ _ \ | | | / __|/ _ \
|  __/>  < (_| | | | | | | |_) | |  __/ | |_| \__ \  __/
 \___/_/\_\__,_|_| |_| |_| .__/|_|\___|  \__,_|___/\___|
                         |_|
*/
There are many more exaples using rnaturalearth

https://www.wvview.org/os_sa/10_Maps_with_tmap.html
https://www2.census.gov/geo/tiger/TIGER2023
https://biostats-r.github.io/biostats/workingInR/140_maps.html
https://cran.r-project.org/src/contrib/Archive/USAboundaries/
https://cran.r-project.org/web/packages/rnaturalearth/index.html
https://github.com/ropensci
https://github.com/walkerke/tigris/tree/master
https://public.opendatasoft.com/explore/dataset/natural-earth-countries-1_110m/table/
https://r-spatial.org/r/2018/10/25/ggplot2-sf-2.html
https://r-spatial.org/r/2018/10/25/ggplot2-sf.html
https://ryanpeek.org/2019-04-29-spatial-joins-in-r/
https://stackoverflow.com/questions/69540839/convert-sf-object-to-dataframe-and-restore-it-to-original-state
https://stackoverflow.com/questions/73028127/adding-coordinates-as-points-to-a-map-in-r
https://walker-data.com/census-r/census-geographic-data-and-applications-in-r.html
https://walker-data.com/census-r/mapping-census-data-with-r.html
https://www.rdocumentation.org/packages/rnaturalearth/versions/0.3.4/topics/ne_countries
https://stackoverflow.com/questions/70545611/how-to-plot-zipcodes-onto-a-map-of-usa-using-counts-in-r
https://r-tmap.github.io/tmap/
https://stackoverflow.com/questions/74869220/how-to-force-text-displayed-by-the-tm-text-function-of-rs-tmap-to-remain-inside
https://deepnote.com/@carlos-mendez/R-Mapping-with-tmap-d9e866cb-20bb-4753-b773-a75f22f7bc02

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
