.class public Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# static fields
.field private static final DBG_TAG:Ljava/lang/String;

.field public static cityManager:Lcom/sec/android/widgetapp/dualclock/City;

.field private static currentCitiesID:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static currentCityID:I

.field public static defalut_city_code:I

.field private static mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

.field private static mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

.field private static mNETTimer:Ljava/util/Timer;

.field private static no_iso_code:Ljava/lang/String;


# instance fields
.field private cityName2CityIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private connetMgr:Landroid/net/ConnectivityManager;

.field private currentISO:Ljava/lang/String;

.field private findTimezoneflag:Z

.field private isoCode2CitiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private isoCode2CityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locationMgr:Landroid/location/LocationManager;

.field private final mStrLangEN:Ljava/lang/String;

.field private final mStrLangKR:Ljava/lang/String;

.field private final mStrUrlPostfix:Ljava/lang/String;

.field private final mStrUrlPrefix:Ljava/lang/String;

.field private mcontext:Landroid/content/Context;

.field private telmamager:Landroid/telephony/TelephonyManager;

.field private final timeOut_network:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 52
    const-string v0, "undefined"

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 55
    const/16 v0, 0x2d

    sput v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->defalut_city_code:I

    .line 62
    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    .line 72
    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    .line 73
    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    .line 74
    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->timeOut_network:I

    .line 56
    const-string v0, "http://maps.google.com/maps/api/geocode/json?latlng="

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mStrUrlPrefix:Ljava/lang/String;

    .line 57
    const-string v0, "&sensor=true"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mStrUrlPostfix:Ljava/lang/String;

    .line 58
    const-string v0, "&language=en"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mStrLangEN:Ljava/lang/String;

    .line 59
    const-string v0, "&language=kr"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mStrLangKR:Ljava/lang/String;

    .line 60
    const-string v0, "undefined"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    .line 65
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    .line 66
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    .line 67
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    .line 69
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    .line 70
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->connetMgr:Landroid/net/ConnectivityManager;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 93
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/dualclock/City;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 96
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->initDefalut_city_code()V

    .line 97
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    .line 100
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    .line 102
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->connetMgr:Landroid/net/ConnectivityManager;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    .line 110
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->loadMap()V

    .line 112
    return-void
.end method

.method private getAddressParser(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 22
    .parameter "in"
    .parameter "bOneAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v2, AddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    const-string v16, "NETWORK_ERROR"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    .line 889
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 891
    .local v4, adr:Landroid/location/Address;
    const-string v16, "NETWORK_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    .end local v4           #adr:Landroid/location/Address;
    :cond_26
    :goto_26
    return-object v2

    .line 903
    :cond_27
    :try_start_27
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 905
    .local v12, obj0:Lorg/json/JSONObject;
    const-string v16, "results"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 909
    .local v9, jar0:Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 911
    .local v8, index:I
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_43

    .line 913
    const/4 v8, 0x1

    .line 917
    :cond_43
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-nez v16, :cond_7f

    .line 919
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 921
    .restart local v4       #adr:Landroid/location/Address;
    const-string v16, "NODATA_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5e} :catch_5f

    goto :goto_26

    .line 1084
    .end local v4           #adr:Landroid/location/Address;
    .end local v8           #index:I
    .end local v9           #jar0:Lorg/json/JSONArray;
    .end local v12           #obj0:Lorg/json/JSONObject;
    :catch_5f
    move-exception v5

    .line 1086
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1088
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-gtz v16, :cond_26

    .line 1096
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1098
    .restart local v4       #adr:Landroid/location/Address;
    const-string v16, "PARSING_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 931
    .end local v4           #adr:Landroid/location/Address;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v8       #index:I
    .restart local v9       #jar0:Lorg/json/JSONArray;
    .restart local v12       #obj0:Lorg/json/JSONObject;
    :cond_7f
    const/4 v6, 0x0

    .local v6, i0:I
    :goto_80
    if-ge v6, v8, :cond_26

    .line 933
    :try_start_82
    new-instance v3, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 935
    .local v3, addrItem:Landroid/location/Address;
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "address_components"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 938
    .local v10, jar1:Lorg/json/JSONArray;
    const/16 v16, 0x0

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "formatted_address"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 941
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "geometry"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "location"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "lat"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 945
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "geometry"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "location"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "lng"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 951
    const/4 v7, 0x0

    .local v7, i1:I
    :goto_e1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_223

    .line 953
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 955
    .local v13, obj1:Lorg/json/JSONObject;
    const-string v16, "types"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 957
    .local v15, types:Lorg/json/JSONArray;
    const-string v16, "short_name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 959
    .local v14, short_name:Ljava/lang/String;
    const-string v16, "long_name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 961
    .local v11, long_name:Ljava/lang/String;
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "country"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_11a

    .line 963
    invoke-virtual {v3, v11}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v3, v14}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 951
    :cond_117
    :goto_117
    add-int/lit8 v7, v7, 0x1

    goto :goto_e1

    .line 969
    :cond_11a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_12a

    .line 972
    invoke-virtual {v3, v11}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_117

    .line 976
    :cond_12a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_13a

    .line 979
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 983
    :cond_13a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_3"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_14a

    .line 985
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 989
    :cond_14a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "colloquial_area"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_15a

    .line 992
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 996
    :cond_15a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "locality"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_16a

    .line 998
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1002
    :cond_16a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "sublocality"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_17a

    .line 1004
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1008
    :cond_17a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "neighborhood"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_18a

    .line 1010
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1014
    :cond_18a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "premise"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_19b

    .line 1015
    invoke-virtual {v3, v11}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1019
    :cond_19b
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "subpremise"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1ac

    .line 1021
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1025
    :cond_1ac
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "postal_code"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1bd

    .line 1027
    invoke-virtual {v3, v11}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1031
    :cond_1bd
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "airport"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1ce

    .line 1033
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1037
    :cond_1ce
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "park"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1df

    .line 1039
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1043
    :cond_1df
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "point_of_interest"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1f0

    .line 1046
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1050
    :cond_1f0
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "street_number"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_201

    .line 1052
    invoke-virtual {v3, v11}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1056
    :cond_201
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "route"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_212

    .line 1058
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1062
    :cond_212
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "intersection"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_117

    .line 1064
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1074
    .end local v11           #long_name:Ljava/lang/String;
    .end local v13           #obj1:Lorg/json/JSONObject;
    .end local v14           #short_name:Ljava/lang/String;
    .end local v15           #types:Lorg/json/JSONArray;
    :cond_223
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_226} :catch_5f

    .line 931
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_80
.end method

.method private getCurrentCountryFromMNC()Ljava/lang/String;
    .registers 6

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, currentRawISOCode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 485
    .local v1, isoCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 489
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Location ISO Code(size)  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 504
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Location ISO Code(From 1st Provider)  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 512
    :goto_49
    return-object v2

    :cond_4a
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    goto :goto_49
.end method

.method private getDataFromNetwork(Ljava/net/URL;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 821
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 823
    .local v5, yc:Ljava/net/HttpURLConnection;
    const/16 v6, 0x1b58

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 825
    const/16 v6, 0x1b58

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 827
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 829
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 831
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 833
    if-eqz v5, :cond_5e

    .line 835
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x1f40

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_74

    .line 843
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_36
    const-string v3, ""

    .line 845
    .local v3, line:Ljava/lang/String;
    :goto_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 847
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_38

    .line 859
    .end local v3           #line:Ljava/lang/String;
    :catch_42
    move-exception v0

    move-object v1, v2

    .line 861
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 863
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v7, "getDataFromNetwork ERROR"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v6, "NETWORK_ERROR"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_66

    .line 869
    if-eqz v1, :cond_58

    .line 871
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_6d

    .line 877
    .end local v0           #e:Ljava/lang/Exception;
    :cond_58
    :goto_58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #yc:Ljava/net/HttpURLConnection;
    :cond_5d
    move-object v1, v2

    .line 869
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_5e
    if-eqz v1, :cond_58

    .line 871
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_58

    .line 872
    :catch_64
    move-exception v6

    goto :goto_58

    .line 869
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    :catchall_66
    move-exception v6

    :goto_67
    if-eqz v1, :cond_6c

    .line 871
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6f

    .line 873
    :cond_6c
    :goto_6c
    throw v6

    .line 872
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_6d
    move-exception v6

    goto :goto_58

    .end local v0           #e:Ljava/lang/Exception;
    :catch_6f
    move-exception v7

    goto :goto_6c

    .line 869
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v5       #yc:Ljava/net/HttpURLConnection;
    :catchall_71
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_67

    .line 859
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    :catch_74
    move-exception v0

    goto :goto_44
.end method

.method private initDefalut_city_code()V
    .registers 6

    .prologue
    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 645
    .local v1, tz:Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GMT+00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 646
    const-string v2, "Europe/London"

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 648
    :cond_1a
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/dualclock/City;->findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, cityCountry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    .line 654
    :goto_2e
    return-void

    .line 652
    :cond_2f
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    sput v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->defalut_city_code:I

    goto :goto_2e
.end method

.method private loadMap()V
    .registers 13

    .prologue
    .line 518
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 523
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_d
    :try_start_d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_98

    .line 525
    const/4 v9, 0x0

    .local v9, type:I
    const/4 v5, -0x1

    .line 527
    .local v5, id:I
    const/4 v6, 0x0

    .local v6, isoCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 529
    .local v2, cityName:Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_d

    const-string v10, "City"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 533
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v4, v10, :cond_d

    .line 535
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, attribute:Ljava/lang/String;
    if-eqz v0, :cond_4c

    const-string v10, "isoCode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 539
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 559
    :cond_3f
    :goto_3f
    if-eqz v6, :cond_49

    const/4 v10, -0x1

    if-eq v5, v10, :cond_49

    if-eqz v2, :cond_49

    .line 561
    packed-switch v9, :pswitch_data_100

    .line 533
    :cond_49
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 541
    :cond_4c
    if-eqz v0, :cond_5f

    const-string v10, "id"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 544
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_3f

    .line 546
    :cond_5f
    if-eqz v0, :cond_72

    const-string v10, "type"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 549
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_3f

    .line 552
    :cond_72
    if-eqz v0, :cond_3f

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 555
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 565
    :pswitch_81
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_93} :catch_94

    goto :goto_49

    .line 635
    .end local v0           #attribute:Ljava/lang/String;
    .end local v2           #cityName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #isoCode:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #type:I
    :catch_94
    move-exception v3

    .line 637
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    .end local v3           #e:Ljava/lang/Exception;
    :cond_98
    return-void

    .line 573
    .restart local v0       #attribute:Ljava/lang/String;
    .restart local v2       #cityName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #isoCode:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #type:I
    :pswitch_99
    :try_start_99
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 575
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 578
    .local v1, cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 590
    :goto_b0
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 582
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_ba
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 584
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 586
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 596
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :pswitch_cc
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 598
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 601
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 613
    :goto_e3
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_49

    .line 605
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_ee
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 607
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 609
    iget-object v10, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ff} :catch_94

    goto :goto_e3

    .line 561
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_81
        :pswitch_99
        :pswitch_cc
    .end packed-switch
.end method

.method public static updateDualClockDB(Landroid/content/Context;Lcom/sec/android/widgetapp/dualclock/City;)V
    .registers 15
    .parameter "context"
    .parameter "cityI"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 658
    const-string v5, "homezone asc"

    .line 659
    .local v5, orderBy:Ljava/lang/String;
    const-string v3, "homezone > 0"

    .line 661
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 663
    .local v0, resolver:Landroid/content/ContentResolver;
    sget v8, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 665
    .local v8, ciytUniqueID:I
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 670
    .local v9, cursorCount:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, mZone:Ljava/lang/String;
    invoke-virtual {p1, v11}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v7

    .line 674
    .local v7, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .local v10, cv:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    if-nez v9, :cond_77

    .line 688
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 696
    :goto_73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 698
    return-void

    .line 692
    :cond_77
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const-string v4, "homezone = 1"

    invoke-virtual {v0, v1, v10, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_73
.end method


# virtual methods
.method public destory()Z
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 118
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 124
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public findLocationNameUsingGC(DD)Ljava/lang/String;
    .registers 19
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 197
    const/4 v13, 0x0

    .line 200
    .local v13, rawISOCode:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocationPointAtActivity : latitude :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v7, 0x1

    :try_start_27
    const-string v8, "EN"

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getAddress(DDZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 208
    .local v11, address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21c

    .line 210
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Address;

    .line 212
    .local v10, address:Landroid/location/Address;
    invoke-virtual {v10}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    .line 214
    if-eqz v13, :cond_21c

    .line 216
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, ISOCode:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 220
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 221
    const-string v2, "TODmobile"

    const-string v3, "----------ISOCode----------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 231
    const-string v9, "OK"

    .line 294
    .end local v9           #ISOCode:Ljava/lang/String;
    .end local v10           #address:Landroid/location/Address;
    .end local v11           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :goto_c1
    return-object v9

    .line 242
    .restart local v9       #ISOCode:Ljava/lang/String;
    .restart local v10       #address:Landroid/location/Address;
    .restart local v11       #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_c2
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 244
    const-string v2, "TODmobile"

    const-string v3, "----------getLocality----------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 255
    const-string v9, "OK"

    goto :goto_c1

    .line 257
    :cond_13e
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 259
    const-string v2, "TODmobile"

    const-string v3, "----------getAdminArea----------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 270
    const-string v9, "OK"

    goto/16 :goto_c1

    .line 273
    :cond_1bb
    const-string v2, "TODmobile"

    const-string v3, "----------else----------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v2, "TODmobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_216} :catch_218

    goto/16 :goto_c1

    .line 288
    .end local v9           #ISOCode:Ljava/lang/String;
    .end local v10           #address:Landroid/location/Address;
    .end local v11           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_218
    move-exception v12

    .line 290
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v12           #e:Ljava/lang/Exception;
    :cond_21c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 294
    iget-object v9, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    goto/16 :goto_c1
.end method

.method public getAddress(DDZLjava/lang/String;)Ljava/util/ArrayList;
    .registers 22
    .parameter "dlat"
    .parameter "dlng"
    .parameter "bOneAddr"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    const/4 v11, 0x0

    .line 706
    .local v11, url:Ljava/net/URL;
    const-wide/16 v6, 0x0

    .local v6, lat:D
    const-wide/16 v9, 0x0

    .line 708
    .local v9, lng:D
    move-wide/from16 v6, p1

    .line 710
    move-wide/from16 v9, p3

    .line 716
    :try_start_9
    const-string v13, "EN"

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_85

    .line 718
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&sensor=true"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&language=en"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_49} :catch_100

    .end local v11           #url:Ljava/net/URL;
    .local v12, url:Ljava/net/URL;
    move-object v11, v12

    .line 782
    .end local v12           #url:Ljava/net/URL;
    .restart local v11       #url:Ljava/net/URL;
    :goto_4a
    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->connetMgr:Landroid/net/ConnectivityManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 785
    .local v4, is3g:Z
    iget-object v13, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->connetMgr:Landroid/net/ConnectivityManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    .line 788
    .local v5, isWifi:Z
    const-string v3, "NETWORK_ERROR"

    .line 790
    .local v3, in:Ljava/lang/String;
    if-nez v4, :cond_66

    if-eqz v5, :cond_6a

    .line 791
    :cond_66
    invoke-direct {p0, v11}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getDataFromNetwork(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 794
    :cond_6a
    const-string v13, "NETWORK_ERROR"

    if-ne v3, v13, :cond_11c

    .line 796
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    new-instance v1, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 800
    .local v1, addr:Landroid/location/Address;
    const-string v13, "NETWORK_ERROR"

    invoke-virtual {v1, v13}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    .end local v1           #addr:Landroid/location/Address;
    .end local v3           #in:Ljava/lang/String;
    .end local v4           #is3g:Z
    .end local v5           #isWifi:Z
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    :goto_84
    return-object v8

    .line 732
    :cond_85
    :try_start_85
    const-string v13, "KR"

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 734
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&sensor=true"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&language=kr"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v11           #url:Ljava/net/URL;
    .restart local v12       #url:Ljava/net/URL;
    move-object v11, v12

    .end local v12           #url:Ljava/net/URL;
    .restart local v11       #url:Ljava/net/URL;
    goto :goto_4a

    .line 750
    :cond_c7
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&sensor=true"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&language=en"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/net/MalformedURLException; {:try_start_85 .. :try_end_fd} :catch_100

    .end local v11           #url:Ljava/net/URL;
    .restart local v12       #url:Ljava/net/URL;
    move-object v11, v12

    .end local v12           #url:Ljava/net/URL;
    .restart local v11       #url:Ljava/net/URL;
    goto/16 :goto_4a

    .line 766
    :catch_100
    move-exception v2

    .line 768
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 770
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    new-instance v1, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 774
    .restart local v1       #addr:Landroid/location/Address;
    const-string v13, "NETWORK_ERROR"

    invoke-virtual {v1, v13}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_84

    .line 808
    .end local v1           #addr:Landroid/location/Address;
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v3       #in:Ljava/lang/String;
    .restart local v4       #is3g:Z
    .restart local v5       #isWifi:Z
    :cond_11c
    move/from16 v0, p5

    invoke-direct {p0, v3, v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getAddressParser(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    goto/16 :goto_84
.end method

.method public getCurrentCityID()I
    .registers 2

    .prologue
    .line 184
    sget v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    return v0
.end method

.method public getCurrentISOCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTimezoneCities()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 329
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 330
    :cond_8
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 332
    .local v0, cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_19

    .line 333
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getIsoCode2CitiesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    return-object v0
.end method

.method public isCurrentTimezoneCitiesExist()Z
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 341
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNetworkLocationListener()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 438
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Location(NET) update failed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    if-eqz v0, :cond_13

    .line 440
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 441
    :cond_13
    sput-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    .line 442
    sput-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    .line 443
    return-void
.end method

.method public requestCurrentLocationExternalListener(Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;)Z
    .registers 11
    .parameter "networklistener"
    .parameter "networkRemover"

    .prologue
    const/4 v0, 0x0

    .line 390
    if-nez p1, :cond_4

    .line 433
    :goto_3
    return v0

    .line 393
    :cond_4
    sput-object p1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    .line 395
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v1, :cond_12

    .line 397
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 399
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 403
    :cond_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 405
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Request Location Updates using Network Provider..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 412
    :try_start_33
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-nez v0, :cond_3e

    .line 414
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 418
    :cond_3e
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Schedule NETTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p2, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4c} :catch_4e

    .line 433
    :goto_4c
    const/4 v0, 0x1

    goto :goto_3

    .line 423
    :catch_4e
    move-exception v7

    .line 425
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 429
    .end local v7           #e:Ljava/lang/Exception;
    :cond_53
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Network Location provider is NOT available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public requestCurrentLocationExternalListener2(Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;)Z
    .registers 11
    .parameter "networklistener"
    .parameter "networkRemover"

    .prologue
    const/4 v0, 0x0

    .line 350
    if-nez p1, :cond_4

    .line 382
    :goto_3
    return v0

    .line 353
    :cond_4
    sput-object p1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    .line 355
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v1, :cond_12

    .line 356
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 357
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 360
    :cond_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 361
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Request Location Updates using Network Provider..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 368
    :try_start_33
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-nez v0, :cond_3e

    .line 369
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 372
    :cond_3e
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Schedule NETTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p2, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4c} :catch_4e

    .line 382
    :goto_4c
    const/4 v0, 0x1

    goto :goto_3

    .line 374
    :catch_4e
    move-exception v7

    .line 375
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 378
    .end local v7           #e:Ljava/lang/Exception;
    :cond_53
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Network Location provider is NOT available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public stopLocationUpdate()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 449
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "===> removeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    if-eqz v0, :cond_1c

    .line 455
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Location(NET) Listener remove..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 458
    sput-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    .line 461
    :cond_1c
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    if-eqz v0, :cond_30

    .line 463
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Location(NET) Listener remove..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 466
    sput-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETListener_external2:Lcom/sec/android/widgetapp/dualclock/WCCities2$NetworkLocationListener;

    .line 469
    :cond_30
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3b

    .line 471
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 473
    sput-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 476
    :cond_3b
    const/4 v0, 0x1

    return v0
.end method

.method public updateCurrentTimeZoneAtWidget()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentCountryFromMNC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 302
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 304
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 306
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 312
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->updateDualClockDB(Landroid/content/Context;Lcom/sec/android/widgetapp/dualclock/City;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "dualclock.add_city"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 322
    :goto_42
    return v0

    .line 308
    :cond_43
    sget v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->defalut_city_code:I

    sput v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    goto :goto_42

    .line 319
    :cond_48
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    goto :goto_42
.end method

.method public updateLocationMNCAtActivity()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentCountryFromMNC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 140
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 142
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 156
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "dualclock.add_city"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 178
    :cond_3b
    :goto_3b
    return v0

    .line 174
    :cond_3c
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->no_iso_code:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 175
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findTimezoneflag:Z

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "dualclock.add_city"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3b
.end method
