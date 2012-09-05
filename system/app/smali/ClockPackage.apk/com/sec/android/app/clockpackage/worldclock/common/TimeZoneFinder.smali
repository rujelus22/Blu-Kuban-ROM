.class public Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;,
        Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;
    }
.end annotation


# static fields
.field private static final DBG_TAG:Ljava/lang/String;

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

.field private static currentCityID:I

.field private static currentISO:Ljava/lang/String;

.field private static mCityID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGPSListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

.field private static mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

.field private static mGPSTimer:Ljava/util/Timer;

.field private static mNETListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

.field private static mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

.field private static mNETTimer:Ljava/util/Timer;


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

.field private final defalut_city_code:I

.field private findTimezoneflag:Z

.field private gpsFindflag:Z

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

.field protected final mGeocoderHandler:Landroid/os/Handler;

.field private mcontext:Landroid/content/Context;

.field private telmamager:Landroid/telephony/TelephonyManager;

.field private final timeOut_gps:I

.field private final timeOut_network:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const-class v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    .line 135
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    .line 137
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 145
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityList:Ljava/util/ArrayList;

    .line 147
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityID:Ljava/util/ArrayList;

    .line 159
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    .line 161
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    .line 163
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 165
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 167
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    .line 169
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->defalut_city_code:I

    .line 121
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->timeOut_gps:I

    .line 123
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->timeOut_network:I

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    .line 143
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    .line 149
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    .line 155
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z

    .line 171
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGeocoderHandler:Landroid/os/Handler;

    .line 292
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    .line 294
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    .line 296
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->loadMap()V

    .line 308
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;)Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/util/Timer;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/Timer;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->determineCityID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->updateWorldClockDB(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z

    return p1
.end method

.method static synthetic access$900()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;)Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput-object p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    return-object p0
.end method

.method private determineCityID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 999
    :goto_19
    return v0

    .line 973
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityList:Ljava/util/ArrayList;

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityID:Ljava/util/ArrayList;

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 979
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 981
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 983
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 985
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 987
    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mCityID:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 993
    :cond_5b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 999
    const/16 v0, 0x2d

    goto :goto_19
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
    .line 1238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v2, AddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    const-string v16, "NETWORK_ERROR"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    .line 1242
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1244
    .local v4, adr:Landroid/location/Address;
    const-string v16, "NETWORK_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    .end local v4           #adr:Landroid/location/Address;
    :cond_26
    :goto_26
    return-object v2

    .line 1256
    :cond_27
    :try_start_27
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v12, obj0:Lorg/json/JSONObject;
    const-string v16, "results"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1262
    .local v9, jar0:Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1264
    .local v8, index:I
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_43

    .line 1266
    const/4 v8, 0x1

    .line 1270
    :cond_43
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-nez v16, :cond_7f

    .line 1272
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1274
    .restart local v4       #adr:Landroid/location/Address;
    const-string v16, "NODATA_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5e} :catch_5f

    goto :goto_26

    .line 1470
    .end local v4           #adr:Landroid/location/Address;
    .end local v8           #index:I
    .end local v9           #jar0:Lorg/json/JSONArray;
    .end local v12           #obj0:Lorg/json/JSONObject;
    :catch_5f
    move-exception v5

    .line 1472
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1474
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-gtz v16, :cond_26

    .line 1482
    new-instance v4, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1484
    .restart local v4       #adr:Landroid/location/Address;
    const-string v16, "PARSING_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1284
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

    .line 1286
    :try_start_82
    new-instance v3, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1288
    .local v3, addrItem:Landroid/location/Address;
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "address_components"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1290
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

    .line 1293
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

    .line 1296
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

    .line 1300
    const/4 v7, 0x0

    .local v7, i1:I
    :goto_e1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_223

    .line 1302
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1304
    .local v13, obj1:Lorg/json/JSONObject;
    const-string v16, "types"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1306
    .local v15, types:Lorg/json/JSONArray;
    const-string v16, "short_name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1308
    .local v14, short_name:Ljava/lang/String;
    const-string v16, "long_name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1310
    .local v11, long_name:Ljava/lang/String;
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "country"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_11a

    .line 1312
    invoke-virtual {v3, v11}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v3, v14}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 1300
    :cond_117
    :goto_117
    add-int/lit8 v7, v7, 0x1

    goto :goto_e1

    .line 1318
    :cond_11a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_12a

    .line 1326
    invoke-virtual {v3, v11}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_117

    .line 1330
    :cond_12a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_13a

    .line 1338
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1342
    :cond_13a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "administrative_area_level_3"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_14a

    .line 1349
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1353
    :cond_14a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "colloquial_area"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_15a

    .line 1357
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1361
    :cond_15a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "locality"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_16a

    .line 1363
    invoke-virtual {v3, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1367
    :cond_16a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "sublocality"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_17a

    .line 1373
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1377
    :cond_17a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "neighborhood"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_18a

    .line 1380
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_117

    .line 1384
    :cond_18a
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "premise"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_19b

    .line 1392
    invoke-virtual {v3, v11}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1396
    :cond_19b
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "subpremise"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1ac

    .line 1406
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1410
    :cond_1ac
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "postal_code"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1bd

    .line 1412
    invoke-virtual {v3, v11}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1416
    :cond_1bd
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "airport"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1ce

    .line 1418
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1422
    :cond_1ce
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "park"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1df

    .line 1424
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1428
    :cond_1df
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "point_of_interest"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1f0

    .line 1430
    invoke-virtual {v3, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1434
    :cond_1f0
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "street_number"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_201

    .line 1436
    invoke-virtual {v3, v11}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1440
    :cond_201
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "route"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_212

    .line 1445
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1449
    :cond_212
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "intersection"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_117

    .line 1450
    invoke-virtual {v3, v11}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1460
    .end local v11           #long_name:Ljava/lang/String;
    .end local v13           #obj1:Lorg/json/JSONObject;
    .end local v14           #short_name:Ljava/lang/String;
    .end local v15           #types:Lorg/json/JSONArray;
    :cond_223
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_226} :catch_5f

    .line 1284
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_80
.end method

.method private getCurrentCountryFromMNC()Ljava/lang/String;
    .registers 4

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, currentRawISOCode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 802
    .local v1, isoCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->telmamager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 826
    :goto_15
    return-object v2

    :cond_16
    const-string v2, "undefined"

    goto :goto_15
.end method

.method private getDataFromNetwork(Ljava/net/URL;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    .line 1162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1168
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1169
    .local v5, yc:Ljava/net/HttpURLConnection;
    if-eqz v5, :cond_5e

    .line 1170
    const/16 v6, 0x1b58

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1172
    const/16 v6, 0x1b58

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1174
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1176
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1178
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 1180
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

    .line 1188
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_36
    const-string v3, ""

    .line 1190
    .local v3, line:Ljava/lang/String;
    :goto_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 1192
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_38

    .line 1204
    .end local v3           #line:Ljava/lang/String;
    :catch_42
    move-exception v0

    move-object v1, v2

    .line 1206
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1208
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v7, "getDataFromNetwork ERROR"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const-string v6, "Error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_66

    .line 1216
    if-eqz v1, :cond_58

    .line 1220
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_6d

    .line 1230
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

    .line 1216
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_5e
    if-eqz v1, :cond_58

    .line 1220
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_58

    .line 1222
    :catch_64
    move-exception v6

    goto :goto_58

    .line 1216
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    :catchall_66
    move-exception v6

    :goto_67
    if-eqz v1, :cond_6c

    .line 1220
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6f

    .line 1224
    :cond_6c
    :goto_6c
    throw v6

    .line 1222
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_6d
    move-exception v6

    goto :goto_58

    .end local v0           #e:Ljava/lang/Exception;
    :catch_6f
    move-exception v7

    goto :goto_6c

    .line 1216
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v5       #yc:Ljava/net/HttpURLConnection;
    :catchall_71
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_67

    .line 1204
    .end local v5           #yc:Ljava/net/HttpURLConnection;
    :catch_74
    move-exception v0

    goto :goto_44
.end method

.method private loadMap()V
    .registers 13

    .prologue
    .line 832
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 836
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_d
    :try_start_d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_98

    .line 838
    const/4 v9, 0x0

    .local v9, type:I
    const/4 v5, -0x1

    .line 840
    .local v5, id:I
    const/4 v6, 0x0

    .local v6, isoCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 842
    .local v2, cityName:Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 844
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_d

    const-string v10, "City"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 846
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v4, v10, :cond_d

    .line 848
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, attribute:Ljava/lang/String;
    if-eqz v0, :cond_4c

    const-string v10, "isoCode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 852
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 868
    :cond_3f
    :goto_3f
    if-eqz v6, :cond_49

    const/4 v10, -0x1

    if-eq v5, v10, :cond_49

    if-eqz v2, :cond_49

    .line 870
    packed-switch v9, :pswitch_data_100

    .line 846
    :cond_49
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 854
    :cond_4c
    if-eqz v0, :cond_5f

    const-string v10, "id"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 856
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_3f

    .line 858
    :cond_5f
    if-eqz v0, :cond_72

    const-string v10, "type"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 860
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_3f

    .line 862
    :cond_72
    if-eqz v0, :cond_3f

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 864
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 874
    :pswitch_81
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_93} :catch_94

    goto :goto_49

    .line 942
    .end local v0           #attribute:Ljava/lang/String;
    .end local v2           #cityName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #isoCode:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #type:I
    :catch_94
    move-exception v3

    .line 944
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 948
    .end local v3           #e:Ljava/lang/Exception;
    :cond_98
    return-void

    .line 882
    .restart local v0       #attribute:Ljava/lang/String;
    .restart local v2       #cityName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #isoCode:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #type:I
    :pswitch_99
    :try_start_99
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 884
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 886
    .local v1, cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 898
    :goto_b0
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 890
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_ba
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 892
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 894
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 904
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :pswitch_cc
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 906
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 908
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 920
    :goto_e3
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_49

    .line 912
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_ee
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 914
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 916
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ff} :catch_94

    goto :goto_e3

    .line 870
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_81
        :pswitch_99
        :pswitch_cc
    .end packed-switch
.end method

.method private static updateWorldClockDB(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1005
    const-string v5, "homezone asc"

    .line 1007
    .local v5, orderBy:Ljava/lang/String;
    const-string v3, "homezone > 0"

    .line 1009
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1011
    .local v0, resolver:Landroid/content/ContentResolver;
    sget v8, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    .line 1013
    .local v8, ciytUniqueID:I
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1015
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1017
    .local v9, cursorCount:I
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 1019
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 1021
    .local v11, mZone:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v7

    .line 1023
    .local v7, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    .local v10, cv:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " / "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1035
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1040
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1042
    if-nez v9, :cond_a1

    .line 1044
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1052
    :goto_9d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1054
    return-void

    .line 1048
    :cond_a1
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const-string v4, "homezone = 1"

    invoke-virtual {v0, v1, v10, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9d
.end method


# virtual methods
.method public cancelLocationupdate()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 734
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    if-eqz v0, :cond_e

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 742
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 746
    :cond_e
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    if-eqz v0, :cond_1b

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 754
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 758
    :cond_1b
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    if-eqz v0, :cond_26

    .line 760
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 762
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    .line 766
    :cond_26
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_31

    .line 768
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 770
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 774
    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method public getAddress(DDZLjava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter "lat"
    .parameter "lng"
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
    .line 1062
    const/4 v4, 0x0

    .line 1066
    .local v4, url:Ljava/net/URL;
    :try_start_1
    const-string v6, "EN"

    invoke-virtual {v6, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1068
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sensor=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&language=en"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_3f} :catch_d8

    .end local v4           #url:Ljava/net/URL;
    .local v5, url:Ljava/net/URL;
    move-object v4, v5

    .line 1136
    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :goto_40
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getDataFromNetwork(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    .local v2, in:Ljava/lang/String;
    const-string v6, "NETWORK_ERROR"

    if-ne v2, v6, :cond_f4

    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1144
    .local v0, addr:Landroid/location/Address;
    const-string v6, "NETWORK_ERROR"

    invoke-virtual {v0, v6}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    .end local v0           #addr:Landroid/location/Address;
    .end local v2           #in:Ljava/lang/String;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    :goto_5e
    return-object v3

    .line 1082
    :cond_5f
    :try_start_5f
    const-string v6, "KR"

    invoke-virtual {v6, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 1084
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sensor=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&language=kr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_40

    .line 1100
    :cond_9f
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sensor=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&language=en"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/net/MalformedURLException; {:try_start_5f .. :try_end_d5} :catch_d8

    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto/16 :goto_40

    .line 1116
    :catch_d8
    move-exception v1

    .line 1118
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1126
    .restart local v0       #addr:Landroid/location/Address;
    const-string v6, "NETWORK_ERROR"

    invoke-virtual {v0, v6}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    .line 1152
    .end local v0           #addr:Landroid/location/Address;
    .end local v1           #e:Ljava/net/MalformedURLException;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v2       #in:Ljava/lang/String;
    :cond_f4
    invoke-direct {p0, v2, p5}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getAddressParser(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_5e
.end method

.method public getCurrentCitiesID()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCurrentCityID()I
    .registers 2

    .prologue
    .line 408
    sget v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    return v0
.end method

.method public getCurrentISOCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    return-object v0
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
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    return-object v0
.end method

.method public isGPSAvailable()Z
    .registers 4

    .prologue
    .line 667
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 670
    .local v0, gpsEnabled:Z
    return v0
.end method

.method public removeWCCitiesLocationListener(Ljava/lang/String;)Z
    .registers 6
    .parameter "provider"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 676
    const-string v1, "network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 678
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 680
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Location(NET) update failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 684
    sput-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 686
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    if-nez v1, :cond_5f

    .line 688
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    const-string v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 724
    :cond_30
    :goto_30
    return v0

    .line 700
    :cond_31
    const-string v1, "gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 702
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->isUpdated()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 704
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v2, "Location(GPS) update failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 708
    sput-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 710
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    if-nez v1, :cond_5f

    .line 712
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    const-string v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 724
    :cond_5f
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public requestCurrentLocationExternalListener(Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;)Z
    .registers 15
    .parameter "networklistener"
    .parameter "gpslistener"
    .parameter "networkRemover"
    .parameter "gpsRemover"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 545
    iput-boolean v9, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z

    .line 547
    if-eqz p2, :cond_c

    if-nez p1, :cond_e

    :cond_c
    move v0, v9

    .line 661
    :goto_d
    return v0

    .line 551
    :cond_e
    sput-object p2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 553
    sput-object p1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    .line 557
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1d

    .line 559
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 561
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    .line 565
    :cond_1d
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-eqz v0, :cond_28

    .line 567
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 569
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 573
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 575
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Request Location Updates using Network Provider..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->init()V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 589
    :try_start_4b
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    if-nez v0, :cond_56

    .line 591
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    .line 595
    :cond_56
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Schedule NETTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mNETTimer:Ljava/util/Timer;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, p3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_64} :catch_66

    move v0, v8

    .line 599
    goto :goto_d

    .line 603
    :catch_66
    move-exception v7

    .line 605
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    .end local v7           #e:Ljava/lang/Exception;
    :goto_6a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isGPSAvailable()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 619
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Request Location Updates using GPS Provider..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->init()V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;

    const-string v1, "gps"

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSListener_external:Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 633
    :try_start_89
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    if-nez v0, :cond_94

    .line 635
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    .line 639
    :cond_94
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Schedule GPSTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGPSTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p4, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a2} :catch_ad

    move v0, v8

    .line 643
    goto/16 :goto_d

    .line 613
    :cond_a5
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "Network Location provider is NOT available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 647
    :catch_ad
    move-exception v7

    .line 649
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7           #e:Ljava/lang/Exception;
    :goto_b1
    move v0, v9

    .line 661
    goto/16 :goto_d

    .line 657
    :cond_b4
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->DBG_TAG:Ljava/lang/String;

    const-string v1, "GPS Location provider is NOT available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1
.end method

.method public updateLocationGPSAtActivity(DD)Ljava/lang/String;
    .registers 18
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 420
    const/4 v12, 0x0

    .local v12, rawISOCode:Ljava/lang/String;
    const/4 v10, 0x0

    .line 433
    .local v10, cityName:Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_3
    const-string v6, "EN"

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getAddress(DDZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 435
    .local v9, address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 437
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 439
    .local v8, address:Landroid/location/Address;
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v12

    .line 441
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    .line 457
    if-eqz v12, :cond_60

    .line 459
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, ISOCode:Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    .line 473
    const-string v7, "OK"

    .line 499
    .end local v7           #ISOCode:Ljava/lang/String;
    .end local v8           #address:Landroid/location/Address;
    .end local v9           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_46
    :goto_46
    return-object v7

    .line 475
    .restart local v7       #ISOCode:Ljava/lang/String;
    .restart local v8       #address:Landroid/location/Address;
    .restart local v9       #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cityName2CityIDMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    .line 479
    const-string v7, "OK"

    goto :goto_46

    .line 491
    .end local v7           #ISOCode:Ljava/lang/String;
    .end local v8           #address:Landroid/location/Address;
    :cond_60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_65

    .line 499
    .end local v9           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :goto_63
    const/4 v7, 0x0

    goto :goto_46

    .line 493
    :catch_65
    move-exception v11

    .line 495
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method public updateLocationMNCAtActivity()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 366
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getCurrentCountryFromMNC()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    .line 368
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    const-string v3, "undefined"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 370
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    .line 378
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    sget v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCityID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 402
    :goto_4d
    return v0

    .line 386
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CitiesMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentISO:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->currentCitiesID:Ljava/util/LinkedList;

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 392
    goto :goto_4d

    .line 398
    :cond_72
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4d
.end method
