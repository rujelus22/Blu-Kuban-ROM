.class public Lcom/google/android/apps/plus/phone/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/LocationController$3;,
        Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayDebugToast:Z

.field private mGpsListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSentLocation:Landroid/location/Location;

.field private mLastSuccessfulLocationListener:Landroid/location/LocationListener;

.field private mListener:Landroid/location/LocationListener;

.field private mLocation:Landroid/location/Location;

.field private mLocationAcquisitionTimer:Ljava/lang/Runnable;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mNetworkListener:Landroid/location/LocationListener;

.field private final mReverseGeo:Z

.field private final mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "reverseGeo"
    .parameter "timeout"
    .parameter "lastLocation"
    .parameter "listener"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 166
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    .line 167
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    .line 168
    iput-boolean p3, p0, Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z

    .line 169
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    .line 170
    iput-wide p4, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    .line 172
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    .line 173
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v9

    .line 174
    .local v9, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 175
    .local v8, providerCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_30
    if-ge v7, v8, :cond_51

    .line 176
    const-string v1, "network"

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 177
    new-instance v1, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    move-wide v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 184
    :cond_51
    const/4 v7, 0x0

    :goto_52
    if-ge v7, v8, :cond_73

    .line 185
    const-string v1, "gps"

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 186
    new-instance v1, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    move-wide v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 193
    :cond_73
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->LOCATION_DEBUGGING:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mDisplayDebugToast:Z

    .line 194
    return-void

    .line 175
    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 184
    :cond_85
    add-int/lit8 v7, v7, 0x1

    goto :goto_52
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;Landroid/location/Location;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/LocationController;->isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/LocationController;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/phone/LocationController;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/LocationController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mDisplayDebugToast:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/LocationListener;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/LocationController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V

    return-void
.end method

.method public static areSameLocations(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 6
    .parameter "location1"
    .parameter "location2"

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static getCityLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "location"

    .prologue
    .line 426
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/LocationController;->getExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "course_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method private static getExtras(Landroid/location/Location;)Landroid/os/Bundle;
    .registers 2
    .parameter "location"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 409
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_7

    .end local v0           #extras:Landroid/os/Bundle;
    :goto_6
    return-object v0

    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_7
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_6
.end method

.method public static getFormattedAddress(Landroid/location/Location;)Ljava/lang/String;
    .registers 3
    .parameter "location"

    .prologue
    .line 419
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/LocationController;->getExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location_description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreetLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "location"

    .prologue
    .line 433
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/LocationController;->getExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finest_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method private isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 15
    .parameter "newLocation"
    .parameter "oldLocation"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x493e0

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3f

    .line 286
    const-string v6, "LocationController"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 287
    const-string v6, "LocationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----> isMoreAccurateLocation: stale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_3d
    const/4 v6, 0x0

    .line 336
    :goto_3e
    return v6

    .line 294
    :cond_3f
    if-nez p2, :cond_53

    .line 295
    const-string v6, "LocationController"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 296
    const-string v6, "LocationController"

    const-string v7, "----> isMoreAccurateLocation: no old location"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_51
    const/4 v6, 0x1

    goto :goto_3e

    .line 302
    :cond_53
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 303
    .local v0, accuracyDelta:I
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/phone/LocationController;->areSameLocations(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 304
    const-string v6, "LocationController"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 305
    const-string v6, "LocationController"

    const-string v7, "----> isMoreAccurateLocation: same location"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_73
    const/4 v6, 0x0

    goto :goto_3e

    .line 311
    :cond_75
    if-lez v0, :cond_9d

    const/4 v2, 0x1

    .line 312
    .local v2, isLessAccurate:Z
    :goto_78
    if-gez v0, :cond_9f

    const/4 v3, 0x1

    .line 313
    .local v3, isMoreAccurate:Z
    :goto_7b
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a1

    const/4 v5, 0x1

    .line 316
    .local v5, isSignificantlyLessAccurate:Z
    :goto_80
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 320
    .local v1, isFromSameProvider:Z
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_a3

    const/4 v4, 0x1

    .line 324
    .local v4, isNewer:Z
    :goto_99
    if-eqz v3, :cond_a5

    .line 325
    const/4 v6, 0x1

    goto :goto_3e

    .line 311
    .end local v1           #isFromSameProvider:Z
    .end local v2           #isLessAccurate:Z
    .end local v3           #isMoreAccurate:Z
    .end local v4           #isNewer:Z
    .end local v5           #isSignificantlyLessAccurate:Z
    :cond_9d
    const/4 v2, 0x0

    goto :goto_78

    .line 312
    .restart local v2       #isLessAccurate:Z
    :cond_9f
    const/4 v3, 0x0

    goto :goto_7b

    .line 313
    .restart local v3       #isMoreAccurate:Z
    :cond_a1
    const/4 v5, 0x0

    goto :goto_80

    .line 320
    .restart local v1       #isFromSameProvider:Z
    .restart local v5       #isSignificantlyLessAccurate:Z
    :cond_a3
    const/4 v4, 0x0

    goto :goto_99

    .line 326
    .restart local v4       #isNewer:Z
    :cond_a5
    if-eqz v4, :cond_ab

    if-nez v2, :cond_ab

    .line 327
    const/4 v6, 0x1

    goto :goto_3e

    .line 328
    :cond_ab
    if-eqz v4, :cond_b3

    if-nez v5, :cond_b3

    if-eqz v1, :cond_b3

    .line 329
    const/4 v6, 0x1

    goto :goto_3e

    .line 332
    :cond_b3
    const-string v6, "LocationController"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 333
    const-string v6, "LocationController"

    const-string v7, "----> isMoreAccurateLocation: less accurate location"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_c3
    const/4 v6, 0x0

    goto/16 :goto_3e
.end method

.method private reverseGeo(Landroid/location/Location;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 345
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/phone/LocationController$2;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController$2;->start()V

    .line 402
    return-void
.end method

.method private unregisterListenersAndRunnables()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    .line 457
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_19

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 461
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_24

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 464
    :cond_24
    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    .line 205
    :cond_e
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;

    .line 207
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_30

    .line 208
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/LocationController$1;-><init>(Lcom/google/android/apps/plus/phone/LocationController;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_30
    return-void
.end method

.method public isProviderEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    :pswitch_1f
    return v0

    .line 249
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method public release()V
    .registers 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController;->unregisterListenersAndRunnables()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    .line 270
    return-void
.end method
