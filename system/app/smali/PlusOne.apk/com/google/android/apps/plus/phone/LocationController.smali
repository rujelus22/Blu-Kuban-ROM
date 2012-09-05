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

.field private final mGpsListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSuccessfulLocationListener:Landroid/location/LocationListener;

.field private mListener:Landroid/location/LocationListener;

.field private mLocation:Landroid/location/Location;

.field private mLocationAcquisitionTimer:Ljava/lang/Runnable;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mNetworkListener:Landroid/location/LocationListener;

.field private final mReverseGeo:Z

.field private final mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "reverseGeo"
    .parameter "timeout"
    .parameter "lastLocation"
    .parameter "listener"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    .line 45
    new-instance v2, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    .line 151
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 153
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    .line 154
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    .line 155
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z

    .line 156
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    .line 157
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    .line 159
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    .line 160
    const/4 v12, 0x0

    .line 161
    .local v12, registeredNetworkListener:Z
    const/4 v11, 0x0

    .line 162
    .local v11, registeredGpsListener:Z
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v10

    .line 163
    .local v10, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 164
    .local v9, providerCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_46
    if-ge v8, v9, :cond_61

    .line 165
    const-string v2, "network"

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 166
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    move-wide/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 168
    const/4 v12, 0x1

    .line 173
    :cond_61
    const/4 v8, 0x0

    :goto_62
    if-ge v8, v9, :cond_7d

    .line 174
    const-string v2, "gps"

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 175
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    move-wide/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 177
    const/4 v11, 0x1

    .line 182
    :cond_7d
    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_99

    if-eqz v12, :cond_99

    if-eqz v11, :cond_99

    .line 183
    new-instance v2, Lcom/google/android/apps/plus/phone/LocationController$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/phone/LocationController$1;-><init>(Lcom/google/android/apps/plus/phone/LocationController;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_99
    return-void

    .line 164
    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 173
    :cond_9d
    add-int/lit8 v8, v8, 0x1

    goto :goto_62
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/phone/LocationController;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;Landroid/location/Location;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/LocationController;->isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/LocationListener;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/LocationController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController;->unregisterListenersAndRunnables()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/LocationController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/LocationController;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    return-wide v0
.end method

.method public static getCityLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 3
    .parameter "location"

    .prologue
    .line 376
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
    .line 358
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 359
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
    .line 369
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
    .line 383
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/LocationController;->getExtras(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finest_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method private isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 16
    .parameter "newLocation"
    .parameter "oldLocation"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/apps/plus/phone/LocationController;->mTimeout:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xea60

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_3f

    .line 247
    const-string v7, "LocationController"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 248
    const-string v7, "LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----> isMoreAccurateLocation: stale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3d
    const/4 v7, 0x0

    .line 299
    :goto_3e
    return v7

    .line 255
    :cond_3f
    if-nez p2, :cond_53

    .line 256
    const-string v7, "LocationController"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 257
    const-string v7, "LocationController"

    const-string v8, "----> isMoreAccurateLocation: no old location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_51
    const/4 v7, 0x1

    goto :goto_3e

    .line 263
    :cond_53
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 264
    .local v0, accuracyDelta:I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8c

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8c

    if-nez v0, :cond_8c

    const/4 v6, 0x1

    .line 266
    .local v6, sameLocation:Z
    :goto_78
    if-eqz v6, :cond_8e

    .line 267
    const-string v7, "LocationController"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 268
    const-string v7, "LocationController"

    const-string v8, "----> isMoreAccurateLocation: same location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_8a
    const/4 v7, 0x0

    goto :goto_3e

    .line 264
    .end local v6           #sameLocation:Z
    :cond_8c
    const/4 v6, 0x0

    goto :goto_78

    .line 274
    .restart local v6       #sameLocation:Z
    :cond_8e
    if-lez v0, :cond_b6

    const/4 v2, 0x1

    .line 275
    .local v2, isLessAccurate:Z
    :goto_91
    if-gez v0, :cond_b8

    const/4 v3, 0x1

    .line 276
    .local v3, isMoreAccurate:Z
    :goto_94
    const/16 v7, 0xc8

    if-le v0, v7, :cond_ba

    const/4 v5, 0x1

    .line 279
    .local v5, isSignificantlyLessAccurate:Z
    :goto_99
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 283
    .local v1, isFromSameProvider:Z
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_bc

    const/4 v4, 0x1

    .line 287
    .local v4, isNewer:Z
    :goto_b2
    if-eqz v3, :cond_be

    .line 288
    const/4 v7, 0x1

    goto :goto_3e

    .line 274
    .end local v1           #isFromSameProvider:Z
    .end local v2           #isLessAccurate:Z
    .end local v3           #isMoreAccurate:Z
    .end local v4           #isNewer:Z
    .end local v5           #isSignificantlyLessAccurate:Z
    :cond_b6
    const/4 v2, 0x0

    goto :goto_91

    .line 275
    .restart local v2       #isLessAccurate:Z
    :cond_b8
    const/4 v3, 0x0

    goto :goto_94

    .line 276
    .restart local v3       #isMoreAccurate:Z
    :cond_ba
    const/4 v5, 0x0

    goto :goto_99

    .line 283
    .restart local v1       #isFromSameProvider:Z
    .restart local v5       #isSignificantlyLessAccurate:Z
    :cond_bc
    const/4 v4, 0x0

    goto :goto_b2

    .line 289
    .restart local v4       #isNewer:Z
    :cond_be
    if-eqz v4, :cond_c5

    if-nez v2, :cond_c5

    .line 290
    const/4 v7, 0x1

    goto/16 :goto_3e

    .line 291
    :cond_c5
    if-eqz v4, :cond_ce

    if-nez v5, :cond_ce

    if-eqz v1, :cond_ce

    .line 292
    const/4 v7, 0x1

    goto/16 :goto_3e

    .line 295
    :cond_ce
    const-string v7, "LocationController"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 296
    const-string v7, "LocationController"

    const-string v8, "----> isMoreAccurateLocation: less accurate location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_de
    const/4 v7, 0x0

    goto/16 :goto_3e
.end method

.method private reverseGeo(Landroid/location/Location;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 308
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/phone/LocationController$2;-><init>(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController$2;->start()V

    .line 352
    return-void
.end method

.method private unregisterListenersAndRunnables()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;

    .line 396
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 398
    return-void
.end method


# virtual methods
.method public isProviderEnabled()Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public release()V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController;->unregisterListenersAndRunnables()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;

    .line 232
    return-void
.end method
