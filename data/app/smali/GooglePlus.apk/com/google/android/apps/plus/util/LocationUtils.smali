.class public Lcom/google/android/apps/plus/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public static convertLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/location/Location;
    .registers 7
    .parameter "location"

    .prologue
    const/4 v2, 0x0

    const-wide v4, 0x416312d000000000L

    .line 77
    if-nez p0, :cond_9

    .line 96
    :goto_8
    return-object v2

    .line 81
    :cond_9
    new-instance v0, Landroid/location/Location;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, l:Landroid/location/Location;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 83
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    .line 84
    .local v1, position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 85
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 88
    :cond_29
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 89
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 93
    .end local v1           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_38
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 94
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    :cond_46
    move-object v2, v0

    .line 96
    goto :goto_8
.end method

.method public static convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 4
    .parameter "location"
    .parameter "name"

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v1, 0x0

    .line 52
    :goto_3
    return-object v1

    .line 39
    :cond_4
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v0

    .line 40
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-static {p0}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 42
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 48
    :goto_20
    if-eqz p1, :cond_25

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 52
    :cond_25
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v1

    goto :goto_3

    .line 45
    :cond_2a
    const/16 v1, 0x55f0

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setAccuracy(I)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    goto :goto_20
.end method

.method public static convertLocationToPlace(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/api/services/plusi/model/Place;
    .registers 9
    .parameter "location"

    .prologue
    const-wide v6, 0x416312d000000000L

    .line 138
    if-nez p0, :cond_9

    .line 139
    const/4 v0, 0x0

    .line 168
    :cond_8
    :goto_8
    return-object v0

    .line 142
    :cond_9
    new-instance v0, Lcom/google/api/services/plusi/model/Place;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Place;-><init>()V

    .line 143
    .local v0, place:Lcom/google/api/services/plusi/model/Place;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 144
    new-instance v3, Lcom/google/api/services/plusi/model/GeoCoordinates;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/GeoCoordinates;-><init>()V

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    .line 145
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    .line 146
    .local v1, position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLatitudeE7()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 147
    iget-object v3, v0, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    .line 150
    :cond_33
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->hasLongitudeE7()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 151
    iget-object v3, v0, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    .line 155
    .end local v1           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_47
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 156
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    .line 159
    :cond_53
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v2

    .line 161
    .local v2, reverseGeoCode:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
    if-eqz v2, :cond_8

    .line 162
    new-instance v3, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;-><init>()V

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    .line 163
    iget-object v3, v0, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->name:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/api/services/plusi/model/Place;->description:Ljava/lang/String;

    goto :goto_8
.end method

.method public static createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 6
    .parameter "location"

    .prologue
    const-wide v3, 0x416312d000000000L

    .line 62
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 63
    .local v0, point:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 64
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 65
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    return-object v1
.end method
