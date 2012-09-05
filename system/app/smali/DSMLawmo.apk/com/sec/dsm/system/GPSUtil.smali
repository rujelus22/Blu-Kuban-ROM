.class public Lcom/sec/dsm/system/GPSUtil;
.super Ljava/lang/Object;
.source "GPSUtil.java"


# static fields
.field static Gloc:Landroid/location/Location;

.field static Nloc:Landroid/location/Location;

.field static expired:Z

.field static isGpsValid:Z

.field static isNonGpsSIMValid:Z

.field static isNonGpsValid:Z

.field static lm:Landroid/location/LocationManager;

.field static timerrun:Z


# instance fields
.field GPSLocationListener:Landroid/location/LocationListener;

.field NGPSLocationListener:Landroid/location/LocationListener;

.field public mAccuracy:D

.field public mAltitude:D

.field public mBearing:D

.field public mLatitude:D

.field public mLongitude:D

.field public mSpeed:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/sec/dsm/system/GPSUtil;->isNonGpsValid:Z

    .line 12
    sput-boolean v0, Lcom/sec/dsm/system/GPSUtil;->isGpsValid:Z

    .line 13
    sput-boolean v0, Lcom/sec/dsm/system/GPSUtil;->isNonGpsSIMValid:Z

    .line 22
    sput-boolean v0, Lcom/sec/dsm/system/GPSUtil;->expired:Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/dsm/system/GPSUtil;->timerrun:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mLatitude:D

    .line 15
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mLongitude:D

    .line 16
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mAltitude:D

    .line 17
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mBearing:D

    .line 18
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mSpeed:D

    .line 19
    iput-wide v0, p0, Lcom/sec/dsm/system/GPSUtil;->mAccuracy:D

    .line 104
    new-instance v0, Lcom/sec/dsm/system/GPSUtil$1;

    invoke-direct {v0, p0}, Lcom/sec/dsm/system/GPSUtil$1;-><init>(Lcom/sec/dsm/system/GPSUtil;)V

    iput-object v0, p0, Lcom/sec/dsm/system/GPSUtil;->GPSLocationListener:Landroid/location/LocationListener;

    .line 126
    new-instance v0, Lcom/sec/dsm/system/GPSUtil$2;

    invoke-direct {v0, p0}, Lcom/sec/dsm/system/GPSUtil$2;-><init>(Lcom/sec/dsm/system/GPSUtil;)V

    iput-object v0, p0, Lcom/sec/dsm/system/GPSUtil;->NGPSLocationListener:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public DSMgetGPSData()[D
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->Nloc:Landroid/location/Location;

    if-eqz v0, :cond_b

    .line 55
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->Nloc:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/GPSUtil;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    .line 58
    :goto_a
    return-object v0

    .line 56
    :cond_b
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->Gloc:Landroid/location/Location;

    if-eqz v0, :cond_16

    .line 57
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->Gloc:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/sec/dsm/system/GPSUtil;->DSMgetLastGPSData(Landroid/location/Location;)[D

    move-result-object v0

    goto :goto_a

    .line 58
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public DSMgetLastGPSData(Landroid/location/Location;)[D
    .registers 6
    .parameter "location"

    .prologue
    .line 62
    const/4 v1, 0x6

    new-array v0, v1, [D

    fill-array-data v0, :array_34

    .line 64
    .local v0, gpsdata:[D
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 66
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 67
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 68
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 69
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    .line 70
    return-object v0

    .line 62
    :array_34
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public DSMremoveListener()V
    .registers 4

    .prologue
    .line 149
    :try_start_0
    sget-object v1, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    if-eqz v1, :cond_13

    .line 150
    sget-object v1, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/dsm/system/GPSUtil;->GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 151
    sget-object v1, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/dsm/system/GPSUtil;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 158
    :goto_12
    return-void

    .line 153
    :cond_13
    const-string v1, "null"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_12

    .line 155
    :catch_19
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public DSMstartGPSTracking(Landroid/content/Context;)V
    .registers 8
    .parameter "pcontext"

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    .line 76
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 80
    const-string v0, "enable the network provider"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 82
    :cond_26
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 85
    const-string v0, "enable the GPS_PROVIDER"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 87
    :cond_3e
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 88
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/sec/dsm/system/GPSUtil;->NGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 90
    const-string v0, "Network GPS listener is starting"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 92
    :cond_56
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 93
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/sec/dsm/system/GPSUtil;->GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 95
    const-string v0, "GPS listener is starting"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 97
    :cond_6e
    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    sget-object v0, Lcom/sec/dsm/system/GPSUtil;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 99
    const-string v0, "All Providers are disabled "

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 102
    :cond_87
    return-void
.end method

.method public GetGPSLocation()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, gpsdata:[D
    invoke-virtual {p0}, Lcom/sec/dsm/system/GPSUtil;->DSMgetGPSData()[D

    move-result-object v0

    .line 35
    if-nez v0, :cond_11

    .line 36
    sput-boolean v1, Lcom/sec/dsm/system/GPSUtil;->isGpsValid:Z

    .line 37
    const-string v2, "GPSdata is null"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 49
    :goto_10
    return v1

    .line 40
    :cond_11
    sput-boolean v2, Lcom/sec/dsm/system/GPSUtil;->isGpsValid:Z

    .line 41
    aget-wide v3, v0, v1

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mLatitude:D

    .line 42
    aget-wide v3, v0, v2

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mLongitude:D

    .line 43
    const/4 v1, 0x2

    aget-wide v3, v0, v1

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mAltitude:D

    .line 44
    const/4 v1, 0x3

    aget-wide v3, v0, v1

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mBearing:D

    .line 45
    const/4 v1, 0x4

    aget-wide v3, v0, v1

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mSpeed:D

    .line 46
    const/4 v1, 0x5

    aget-wide v3, v0, v1

    iput-wide v3, p0, Lcom/sec/dsm/system/GPSUtil;->mAccuracy:D

    move v1, v2

    .line 49
    goto :goto_10
.end method
