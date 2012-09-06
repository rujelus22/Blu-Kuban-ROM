.class public Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;
.super Ljava/lang/Object;
.source "UnveilLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LOCATION_AGE_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "UnveilLocationListener"


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private location:Landroid/location/Location;

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Landroid/location/LocationManager;)V
    .registers 4
    .parameter "application"
    .parameter "locationManager"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationCache(F)Lcom/google/android/apps/unveil/sensors/LocationCache;
    .registers 4
    .parameter "evictionMeters"

    .prologue
    .line 168
    new-instance v0, Lcom/google/android/apps/unveil/sensors/LocationCache;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getLatLngEncrypter()Lcom/google/android/apps/unveil/network/LatLngEncrypter;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/apps/unveil/sensors/LocationCache;-><init>(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Lcom/google/android/apps/unveil/network/LatLngEncrypter;F)V

    return-object v0
.end method

.method public off()V
    .registers 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 124
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;

    .line 125
    .local v1, listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    invoke-interface {v1, p0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;->onLocationDisabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V

    goto :goto_b

    .line 127
    .end local v1           #listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    :cond_1b
    return-void
.end method

.method public on()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, haveGpsProvider:Z
    const/4 v8, 0x0

    .line 49
    .local v8, haveNetworkProvider:Z
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_18} :catch_50

    .line 51
    const/4 v7, 0x1

    .line 60
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_2e} :catch_66

    .line 62
    const/4 v8, 0x1

    .line 70
    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;

    .line 71
    .local v10, listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    invoke-interface {v10, p0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;->onLocationEnabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V

    goto :goto_35

    .line 53
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "GPS location provider disabled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_19

    .line 55
    :catch_50
    move-exception v6

    .line 56
    .local v6, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "No GPS location provider; are you in the emulator?"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 64
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Wireless network location provider disabled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_2f

    .line 66
    :catch_66
    move-exception v6

    .line 67
    .restart local v6       #e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "No network location provider; are you in the emulator?"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f

    .line 76
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_71
    const/4 v12, 0x0

    .line 77
    .local v12, prevGpsLocation:Landroid/location/Location;
    if-eqz v7, :cond_7c

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    .line 80
    :cond_7c
    const/4 v13, 0x0

    .line 81
    .local v13, prevNetworkLocation:Landroid/location/Location;
    if-eqz v8, :cond_87

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v13

    .line 87
    :cond_87
    if-eqz v12, :cond_c4

    if-eqz v13, :cond_c4

    .line 89
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_c1

    .line 90
    iput-object v12, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    .line 101
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getMockLocation()Landroid/location/Location;

    move-result-object v11

    .line 102
    .local v11, mockLocation:Landroid/location/Location;
    if-eqz v11, :cond_a7

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    if-nez v0, :cond_ce

    .line 104
    iput-object v11, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    .line 110
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    if-eqz v0, :cond_c0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_d4

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    .line 120
    :cond_c0
    return-void

    .line 92
    .end local v11           #mockLocation:Landroid/location/Location;
    :cond_c1
    iput-object v13, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    goto :goto_99

    .line 95
    :cond_c4
    if-eqz v12, :cond_c9

    .line 96
    iput-object v12, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    goto :goto_99

    .line 97
    :cond_c9
    if-eqz v13, :cond_99

    .line 98
    iput-object v13, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    goto :goto_99

    .line 106
    .restart local v11       #mockLocation:Landroid/location/Location;
    :cond_ce
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, v11}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_a7

    .line 115
    :cond_d4
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_da
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;

    .line 116
    .restart local v10       #listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-interface {v10, p0, v0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;->onLocationChanged(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Landroid/location/Location;)V

    goto :goto_da
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "changedLocation"

    .prologue
    .line 131
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    if-nez v3, :cond_2b

    .line 132
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    .line 137
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/UnveilContext;->getMockLocation()Landroid/location/Location;

    move-result-object v2

    .line 138
    .local v2, mockLocation:Landroid/location/Location;
    if-eqz v2, :cond_13

    .line 139
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-virtual {v3, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 142
    :cond_13
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;

    .line 143
    .local v1, listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-interface {v1, p0, v3}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;->onLocationChanged(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Landroid/location/Location;)V

    goto :goto_19

    .line 134
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
    .end local v2           #mockLocation:Landroid/location/Location;
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->location:Landroid/location/Location;

    invoke-virtual {v3, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_6

    .line 145
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #mockLocation:Landroid/location/Location;
    :cond_31
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 153
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 155
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 157
    return-void
.end method

.method public registerListener(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
