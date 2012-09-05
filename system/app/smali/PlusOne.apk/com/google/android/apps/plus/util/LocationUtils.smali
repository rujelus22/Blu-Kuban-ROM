.class public Lcom/google/android/apps/plus/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static convertLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/location/Location;
    .registers 7
    .parameter "location"

    .prologue
    const/4 v2, 0x0

    const-wide v4, 0x416312d000000000L

    .line 73
    if-nez p0, :cond_9

    .line 92
    :goto_8
    return-object v2

    .line 77
    :cond_9
    new-instance v0, Landroid/location/Location;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, l:Landroid/location/Location;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 79
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    .line 80
    .local v1, position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 81
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 84
    :cond_29
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 85
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 89
    .end local v1           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_38
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 90
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    :cond_46
    move-object v2, v0

    .line 92
    goto :goto_8
.end method

.method public static convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 4
    .parameter "location"
    .parameter "name"

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v1, 0x0

    .line 48
    :goto_3
    return-object v1

    .line 35
    :cond_4
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 36
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-static {p0}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 38
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 39
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 44
    :goto_20
    if-eqz p1, :cond_25

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 48
    :cond_25
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    goto :goto_3

    .line 41
    :cond_2a
    const/16 v1, 0x55f0

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_20
.end method

.method public static createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 6
    .parameter "location"

    .prologue
    const-wide v3, 0x416312d000000000L

    .line 58
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 59
    .local v0, point:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 60
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    return-object v1
.end method
