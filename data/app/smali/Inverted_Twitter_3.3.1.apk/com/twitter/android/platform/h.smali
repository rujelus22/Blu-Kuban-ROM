.class public final Lcom/twitter/android/platform/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/location/LocationManager;)Z
    .registers 2

    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "gps"

    invoke-static {p0, v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z
    .registers 4

    const-string v0, "network"

    invoke-static {p0, p1, v0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gps"

    invoke-static {p0, p1, v1}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)Z
    .registers 9

    invoke-static {p0, p2}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/32 v2, 0xea60

    const v4, 0x453b8000

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/location/LocationManager;)Landroid/location/Location;
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_31

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x1b7740

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_2d

    :goto_2c
    return-object v0

    :cond_2d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    :cond_31
    const/4 v0, 0x0

    goto :goto_2c
.end method
